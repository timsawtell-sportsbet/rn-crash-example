/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  Platform,
  StyleSheet,
  Text,
  View,
  requireNativeComponent
} from 'react-native';
import { AssumeIAmANodeModule, Item } from './AssumeIAmANodeModule'

export default class App extends Component {
  render() {
    return (
      <View style={{justifyContent: "center", flex: 1}}>
        <AssumeIAmANodeModule>
          <Item label="it works?" />
          <Item label="sure does" />
          <Item label="Now run me in release mode" />
        </AssumeIAmANodeModule>
      </View>
    )
  }
}

