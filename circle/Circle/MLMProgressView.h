//
//  AppDelegate.m
//  circle
//
//  Created by 王洁 on 2018/6/1.
//  Copyright © 2018年 王洁. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MLMProgressHeader.h"
@interface MLMProgressView : UIView

@property (nonatomic, strong) MLMCircleView *circle;

@property (nonatomic, strong) MLMCalibrationView *calibra;

@property (nonatomic, strong) UILabel *textLabel;
//这里只是简单写两种进度盘的风格，具体使用的时候请自己组合

//芝麻信用
- (UIView *)sesameCreditType;



@end
