import React, { Component } from 'react';
import {
  requireNativeComponent
} from 'react-native';

const NativeView = requireNativeComponent("NativeView", null);

export class Item extends Component {
    render() {
        return null
    }
}

export class NativeThing extends Component {

    /**
     * Return an array of strings from the children of this component
     * @param {any} data 
     */
    gatherNativeData = (data) => {
        let itemsArray = []
        if (data.children) {
            if (data.children.constructor === Array) {
                children = data.children
            } else {
                children = [data.children]
            }
        }
        children.forEach((child, index) => {
            if (!child) {
                return
            }
            if (child.type.name === "Item" && child.props.label) {
                itemsArray.push(child.props.label)
            }
        })
        return itemsArray
    }

    render() {
        const dataForNative = this.gatherNativeData(this.props)
        return (
            <NativeView simpleArray={dataForNative} />
        )
    }
}