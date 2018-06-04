//
//  AppDelegate.m
//  circle
//
//  Created by 王洁 on 2018/6/1.
//  Copyright © 2018年 王洁. All rights reserved.
//

#import "UIColor+Extension.h"

@implementation UIColor (Extension)


+ (UIColor *)colorWithHex:(long)hex {
    
    CGFloat red =((CGFloat)((hex & 0xFF0000) >> 16)) / 255.0;
    CGFloat green = ((CGFloat)((hex & 0xFF00) >> 8)) / 255.0;
    CGFloat blue = ((CGFloat)(hex & 0xFF)) / 255.0;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:0.5];
}


@end
