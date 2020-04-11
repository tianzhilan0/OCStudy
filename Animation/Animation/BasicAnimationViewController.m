//
//  BasicAnimationViewController.m
//  Animation
//
//  Created by 李闯 on 2020/4/10.
//  Copyright © 2020 李闯. All rights reserved.
//

#import "BasicAnimationViewController.h"

@interface BasicAnimationViewController ()

@end

@implementation BasicAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(100, 200, 50, 50)];
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view];
    
    
    //移动
//    CABasicAnimation * animation = [CABasicAnimation animation];
//    animation.keyPath = @"position";
//    animation.duration = 2;
////    animation.beginTime = 1;
//    animation.repeatCount = 3;
//    animation.autoreverses = YES;
//    animation.speed = 2;
//    animation.timeOffset = 2;
////    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
//
//    //    animation.repeatDuration = 4;
//    animation.fromValue = [NSValue valueWithCGPoint:CGPointMake(100, 300)];
//    animation.toValue = [NSValue valueWithCGPoint:CGPointMake(200, 300)];
////    animation.removedOnCompletion = NO;
//    animation.fillMode = kCAFillModeForwards;
//    [view.layer addAnimation:animation forKey:nil];
    
    
    //旋转
//    CABasicAnimation * animation = [CABasicAnimation animation];
//    animation.keyPath = @"transform";
//    animation.duration = 2;
//    animation.repeatCount = 3;
//    animation.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(M_PI, 0, 0, 1)];
//    animation.removedOnCompletion = NO;
//    animation.fillMode = kCAFillModeForwards;
//    [view.layer addAnimation:animation forKey:nil];
     
    
//    //缩放
//    CABasicAnimation * animation = [CABasicAnimation animation];
//    animation.keyPath = @"transform";
//    animation.duration = 2;
//    animation.repeatCount = HUGE;
//    animation.autoreverses = YES;
////    animation.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.5, 0.5, 1)];
//
//    animation.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(2, 2, 1)];
//    animation.removedOnCompletion = NO;
//    animation.fillMode = kCAFillModeForwards;
//    [view.layer addAnimation:animation forKey:nil];
    
    
    
//    //渐隐
//    CABasicAnimation * animation = [CABasicAnimation animation];
//    animation.keyPath = @"opacity";
//    animation.duration = 2;
//    animation.repeatCount = HUGE;
//    animation.autoreverses = YES;
//    animation.fromValue = @(1);
//    animation.toValue = @(0);
//    animation.removedOnCompletion = NO;
//    animation.fillMode = kCAFillModeForwards;
//    [view.layer addAnimation:animation forKey:nil];
    
    
    
//    //关键帧动画
//    CAKeyframeAnimation * animation = [CAKeyframeAnimation animation];
//    animation.keyPath = @"position";
//    animation.duration = 2;
//    animation.repeatCount = HUGE;
//    animation.calculationMode = kCAAnimationPaced;
//    animation.values = @[[NSValue valueWithCGPoint:CGPointMake(100, 100)],
//                        [NSValue valueWithCGPoint:CGPointMake(300, 100)],
//                        [NSValue valueWithCGPoint:CGPointMake(300, 300)],
//                        [NSValue valueWithCGPoint:CGPointMake(100, 300)],
//                        [NSValue valueWithCGPoint:CGPointMake(100, 100)]];
//    animation.keyTimes = @[[NSNumber numberWithFloat:0.0],
//                          [NSNumber numberWithFloat:0.4],
//                          [NSNumber numberWithFloat:0.6],
//                          [NSNumber numberWithFloat:0.8],
//                          [NSNumber numberWithFloat:0.0]];
//    [view.layer addAnimation:animation forKey:nil];
    
    
    
//    //CASpringAnimation
//    CASpringAnimation * animation = [CASpringAnimation animation];
//    animation.keyPath = @"position";
//
//    animation.mass = 5;
//    animation.stiffness = 100;
//    animation.damping = 5;
//    animation.initialVelocity = 2;
//    animation.fromValue = [NSValue valueWithCGPoint:CGPointMake(200, 200)];
//    animation.toValue = [NSValue valueWithCGPoint:CGPointMake(200, 500)];;
//    animation.duration = animation.settlingDuration;
//    animation.fillMode = kCAFillModeBackwards;
//    [view.layer addAnimation:animation forKey:nil];
    
    
    
//    //CAAnimationGroup
//    //0. 初始化动画组
//    CAAnimationGroup *group = [CAAnimationGroup animation];
//    //1. 平移动画
//    CABasicAnimation *animation1 = [CABasicAnimation animation];
//    animation1.keyPath = @"position";
//    animation1.fromValue = [NSValue valueWithCGPoint:CGPointMake(100, 200)];
//    animation1.toValue = [NSValue valueWithCGPoint:CGPointMake(100, 600)];
//
//    //2. 缩放动画
//    CABasicAnimation *animation2 = [CABasicAnimation animation];
//    animation2.keyPath = @"transform.scale";
//    animation2.toValue = @(2);
//
//    //3. 旋转动画
//    CABasicAnimation *animation3 = [CABasicAnimation animation];
//    animation3.keyPath = @"transform.rotation.z";
//    animation3.fromValue = @(0);
//    animation3.toValue = @(3*M_PI);
//
//    //4. 添加到动画组
//    group.animations = @[animation1, animation2, animation3];
//    group.removedOnCompletion = NO;
//    group.autoreverses = YES;
//
//    group.duration = 2;
//    [view.layer addAnimation:group forKey:@"move-scale-rotate-layer"];
    
    
    
    //蒙版
    CALayer * layer = [CALayer layer];
    layer.frame = CGRectMake(100, 150, 300, 300);
    // 直接设置layer的contents属性，它可以是一张图片的内容，但是我们的layer同样不认识UIKit下面的UIImage，它只接收CGImageRef，所以使用桥接来进行强转
    layer.contents = (__bridge id)[UIImage imageNamed:@"content.png"].CGImage;
    [self.view.layer addSublayer:layer];
    
    UIBezierPath * bezierPath = [UIBezierPath bezierPath];
    // 起始点在(图片宽的一半,0)的位置
    [bezierPath moveToPoint:CGPointMake(150, 0)];
    // 大概估算一下x和y的值
    [bezierPath addLineToPoint:CGPointMake(50, 200)];
//    [bezierPath addLineToPoint:CGPointMake(300, 300)];
    // 向右拉一条二阶贝塞尔曲线，控制点在中部偏下
    [bezierPath addQuadCurveToPoint:CGPointMake(250, 200) controlPoint:CGPointMake(150, 300)];
    // 闭合曲线，这样就会从当前点(150,300)到起始点(150,0)连线来进行闭合
    [bezierPath closePath];
    
    
    // 构造蒙版图层
    CAShapeLayer * maskLayer = [CAShapeLayer layer];
    maskLayer.path = bezierPath.CGPath;
    // 因为maskLayer的填充颜色默认是存在的，所以可以直接作为蒙版
    layer.mask = maskLayer;
    
    
    // 填充颜色为透明，填充内容将不再作为蒙版内容
    maskLayer.fillColor = [UIColor clearColor].CGColor;
    // 任意颜色，只要不透明就行，描线颜色就将作为蒙版内容
    maskLayer.strokeColor = [UIColor redColor].CGColor;
    
    maskLayer.lineWidth = 30;
    CABasicAnimation * animation = [CABasicAnimation animation];
    animation.keyPath = @"strokeEnd";
    animation.duration = 3;
    animation.fromValue = @0;
    // 由于maskLayer默认的strokeEnd就是1，所以这里不再需要重新设置modelLayer的属性
    [maskLayer addAnimation:animation forKey:nil];
    
    
    
    
    
}

@end
