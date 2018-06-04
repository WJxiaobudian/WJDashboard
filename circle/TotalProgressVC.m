//
//  AppDelegate.m
//  circle
//
//  Created by 王洁 on 2018/6/1.
//  Copyright © 2018年 王洁. All rights reserved.
//

#import "TotalProgressVC.h"
#import "MLMProgressView.h"
#import "UIView+Extensions.h"

@interface TotalProgressVC ()

@end

@implementation TotalProgressVC

- (void)viewDidLoad {
    [super viewDidLoad];


    MLMProgressView *progress = [[MLMProgressView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    [progress sesameCreditType].center = self.view.center;
    [progress.circle setProgress:0.6];
    [self.view addSubview:progress];
  
}

#pragma mark <UICollectionViewDataSource>



@end
