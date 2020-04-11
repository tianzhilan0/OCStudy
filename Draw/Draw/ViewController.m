//
//  ViewController.m
//  Draw
//
//  Created by 李闯 on 2020/4/9.
//  Copyright © 2020 李闯. All rights reserved.
//

#import "ViewController.h"
#import "DrawView.h"
#import "CustomView.h"
#import "CustomView2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
//    DrawView *drawView = [[DrawView alloc] init];
//
//    drawView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
//    [self.view addSubview:drawView];

    
//    CustomView *customView = [[CustomView alloc] init];
//
//    customView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
//    [self.view addSubview:customView];
    
    
    
//    // iOS 中间镂空效果的View
//    UIView *maskView = [[UIView alloc] initWithFrame:self.view.bounds];
//    maskView.backgroundColor = [UIColor grayColor];
//    maskView.alpha = 0.8;
//    [self.view addSubview:maskView];
//
//    //贝塞尔曲线 画一个带有圆角的矩形
//    UIBezierPath *bpath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(10, 10, self.view.frame.size.width - 20, self.view.frame.size.height - 20) cornerRadius:15];
//    //贝塞尔曲线 画一个圆形
//    [bpath appendPath:[UIBezierPath bezierPathWithArcCenter:maskView.center radius:50 startAngle:0 endAngle:M_PI clockwise:NO]];
//    //创建一个CAShapeLayer 图层
//    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
//    shapeLayer.path = bpath.CGPath;
//    //添加图层蒙板
//    maskView.layer.mask = shapeLayer;
    
    
        CustomView2 *customView = [[CustomView2 alloc] init];
    
        customView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        [self.view addSubview:customView];
    
}


@end
