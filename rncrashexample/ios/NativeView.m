//
//  NativeView.m
//  rncrashexample
//
//  Created by Tim Sawtell on 30/11/17.
//  Copyright © 2017 Sportsbet. All rights reserved.
//

#import "NativeView.h"

@implementation NativeView

- (void)setSimpleArray:(NSArray *)simpleArray
{
  _simpleArray = simpleArray;
  int i = 0;
  for (NSString *item in simpleArray) {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, i * 25, 250, 20)];
    label.text = item;
    [self addSubview:label];
    i++;
  }
  // make the app crash when in release mode.
  // it will not crash  in debug mode becuase `simpleArray` has 3 elements in it
  // in release mode it's an empty array. This is EXACTLY the point of raising the bug.

  // Remove this array index accessor if you think maybe it's just empty on the first time into this method
  // Unfortunately this setter is only ever called ONCE
  NSString *crashMe = simpleArray[1];
  NSLog(@"%@", crashMe);
}

@end
