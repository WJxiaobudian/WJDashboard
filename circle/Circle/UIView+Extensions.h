//
//  AppDelegate.m
//  circle
//
//  Created by 王洁 on 2018/6/1.
//  Copyright © 2018年 王洁. All rights reserved.
//

#import <UIKit/UIKit.h>
#import<QuartzCore/QuartzCore.h>

@interface UIView (Extensions)

@property (nonatomic, assign) CGFloat x;

@property (nonatomic, assign) CGFloat y;

@property (nonatomic, assign) CGFloat width;

@property (nonatomic, assign) CGFloat height;

@property (nonatomic, assign) CGFloat centerX;

@property (nonatomic, assign) CGFloat centerY;

@property (nonatomic, assign) CGSize size;

@property (nonatomic, assign) CGPoint origin;

@property (nonatomic, assign, readonly) CGPoint bottomLeft;

@property (nonatomic, assign, readonly) CGPoint bottomRight;

@property (nonatomic, assign, readonly) CGPoint topRight;

@property (nonatomic, assign) CGFloat top;

@property (nonatomic, assign) CGFloat left;

@property (nonatomic, assign) CGFloat bottom;

@property (nonatomic, assign) CGFloat right;


@end


