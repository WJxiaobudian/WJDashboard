//
//  AppDelegate.m
//  circle
//
//  Created by 王洁 on 2018/6/1.
//  Copyright © 2018年 王洁. All rights reserved.
//

#import "MLMProgressView.h"
@interface MLMProgressView()

// 外圈颜色
@property (nonatomic, strong) NSMutableArray *colors;

@end


@implementation MLMProgressView
- (NSMutableArray *)colors {
    if (!_colors) {

        _colors = [NSMutableArray array];
        NSArray *arr = @[@0xffff0000,@0xffffff00, @0xff00ff00,@0xff00ffff,@0xff0000ff,@0xffff00ff];
        [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {

            UIColor *hexColor = [UIColor colorWithHex:(int)obj];
            [self->_colors addObject: (__bridge id)hexColor.CGColor];

        }];
    }
    return _colors;
}

//芝麻信用
- (UIView *)sesameCreditType {
    CGFloat startAngle = 150;
    CGFloat endAngle = 390;

     double F;
    if (self.frame.size.width < self.frame.size.height) {
        F = self.frame.size.width;
    } else {
        F = self.frame.size.height;
    }

    // 创建一个shapeLayer 类
    CAShapeLayer *arc = [CAShapeLayer layer];
    // 设置shapeLayer的路径
    arc.path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(F * 0.5, F * 0.5) radius:F * 0.46 startAngle:(150.0 * M_PI) / 180 endAngle:(390.0  * M_PI) / 180 clockwise:YES].CGPath;
    arc.fillColor = [UIColor clearColor].CGColor;
    arc.strokeColor = [UIColor lightGrayColor].CGColor;
    arc.lineWidth = 15;
    arc.lineCap = kCALineCapButt;
    arc.lineDashPattern = [NSArray arrayWithObjects:@10, @1, nil];
    CAGradientLayer *gradientlayer = [CAGradientLayer layer];
    gradientlayer.frame = self.frame;
    gradientlayer.colors = self.colors;
    gradientlayer.mask = arc;
    gradientlayer.startPoint = CGPointMake(0, 0.5);
    gradientlayer.endPoint = CGPointMake(1, 0.5);
    [self.layer addSublayer:gradientlayer];
   
    
    //刻度
    _calibra = [[MLMCalibrationView alloc] initWithFrame:CGRectMake(0, 0, F, F) startAngle:startAngle endAngle:endAngle];
    _calibra.majorTextColor = UIColor.blackColor;
    _calibra.customArray =  @[@"0",@"10",@"较差",@"30",@"40",@"良好",@"60",@"70",@"优秀",@"90",@"100"];
    _calibra.edgeSpace = 10;
    _calibra.center = self.center;
    [_calibra drawCalibration];
    [self addSubview:_calibra];
    
   
    
    //进度
    _circle = [[MLMCircleView alloc] initWithFrame:CGRectMake(0, 0, F * 0.75, F * 0.75) startAngle:startAngle endAngle:endAngle];
    _circle.center = self.center;
    _circle.bottomWidth = 4;
    _circle.progressWidth = 4;
    _circle.fillColor = UIColor.greenColor;
    _circle.bgColor = UIColor.lightGrayColor;
    _circle.dotDiameter = 8;
    _circle.edgespace = 10;
    _circle.dotImage = [UIImage imageNamed:@"redDot"];
    [_circle drawProgress];
    [self addSubview:_circle];
    
    
    CAShapeLayer *insideArc = [CAShapeLayer layer];
    insideArc.path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(F * 0.5 + self.frame.origin.x, F * 0.5 + self.frame.origin.y) radius:F * 0.23 startAngle:(150 * M_PI) / 180 endAngle:(390 * M_PI) / 180 clockwise:YES].CGPath;
    insideArc.lineWidth = 2;
    insideArc.lineDashPattern = @[@5,@1];
    insideArc.fillColor = [UIColor clearColor].CGColor;
    insideArc.strokeColor = [UIColor lightGrayColor].CGColor;
    [self.layer addSublayer:insideArc];
    
    self.textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, _calibra.freeWidth, _calibra.freeWidth)];
    self.textLabel.center = self.center;
    self.textLabel.textColor = UIColor.greenColor;
    self.textLabel.textAlignment = NSTextAlignmentCenter;
    self.textLabel.font = [UIFont systemFontOfSize:15];
    self.textLabel.text = @"60 \n 芝麻信用";
    self.textLabel.numberOfLines = 0;
    [self addSubview:self.textLabel];
    
    return self;
}


@end
