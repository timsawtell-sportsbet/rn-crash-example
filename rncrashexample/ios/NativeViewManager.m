//
//  UPIManager.m
//  Ultra-Picker-iOS
//
//  Created by Tim Sawtell on 3/9/17.
//  Copyright © 2017 Sportsbet. All rights reserved.
//

#import "NativeView.h"
#import <React/RCTBridgeModule.h>
#import <React/RCTViewManager.h>

@interface NativeViewManager : RCTViewManager

@end

@implementation NativeViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  NativeView *view = [NativeView new];
  return view;
}


RCT_EXPORT_VIEW_PROPERTY(simpleArray, NSArray)

@end

