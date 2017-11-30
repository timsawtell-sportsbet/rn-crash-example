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
}

@end
