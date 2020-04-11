//
//  CustomView2.m
//  Draw
//
//  Created by 李闯 on 2020/4/9.
//  Copyright © 2020 李闯. All rights reserved.
//

#import "CustomView2.h"

@implementation CustomView2


- (void)drawRect:(CGRect)rect {
//     // 1\. 获取当前控件的图形上下文
//     CGContextRef context = UIGraphicsGetCurrentContext();
//     // 2\. 描述绘画图形内容
//     // a. 获取图形路径
//     CGMutablePathRef path = CGPathCreateMutable();
//     // b. 添加起始点
//     CGPathMoveToPoint(path, NULL, 0, 100);
//     // C. 添加控制点和终点，控制点(150,150)、终点(0,250)
//     CGPathAddQuadCurveToPoint(path, NULL, 100, 200, 200, 100);
//    CGPathAddQuadCurveToPoint(path, NULL, 300, 0, 400, 100);
//     // 3\. 把绘制图形内容添加到图形上下文
//     CGContextAddPath(context, path);
//     // 4\. 设置图形上下文状态
//     // 设置颜色
//     [[UIColor redColor] set];
//     // 设置线宽
//     CGContextSetLineWidth(context, 10);
//     // 5\. 渲染图形上下文
//     CGContextStrokePath(context);
    
//    // 1. 获取当前控件的图形上下文
//    CGContextRef context = UIGraphicsGetCurrentContext();
//
//    // 2. 描述绘画图形内容
//    // a. 创建图形起始点
//    CGContextMoveToPoint(context, 0, 0);
//    // b. 添加控制点和终点,控制点(300,200)，终点(0,250)
//    CGContextAddQuadCurveToPoint(context, 300, 125, 0, 250);
//
//    // 3. 设置图形上下文状态
//    // 设置颜色
//    [[UIColor redColor] set];
//    // 设置线宽
//    CGContextSetLineWidth(context, 10);
//    // 4. 渲染图形上下文
//    CGContextStrokePath(context);
    
    
//    //绘制矩形
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    CGRect rectangle = CGRectMake(100, 100, 60, 60);
//    CGContextAddRect(ctx, rectangle);
//    CGContextSetFillColorWithColor(ctx, [UIColor lightGrayColor].CGColor);
//    CGContextFillPath(ctx);
    
    
    
    
//    CGContextAddArc(CGContextRef c, CGFloat x, CGFloat y, CGFloat radius, CGFloat startAngle, CGFloat endAngle, int clockwise)
//    c           当前图形
//    x           圆弧的中心点坐标x
//    y           曲线控制点的y坐标
//    radius      指定点的x坐标值
//    startAngle  弧的起点与正X轴的夹角，
//    endAngle    弧的终点与正X轴的夹角
//    clockwise   指定1创建一个顺时针的圆弧，或是指定0创建一个逆时针圆弧
//    //圆
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    CGContextAddArc(ctx, 200, 200, 100, 0, 2*M_PI, 1);
//    CGContextSetFillColorWithColor(ctx, [UIColor orangeColor].CGColor);
//    CGContextFillPath(ctx);
//
//
//    //椭圆
////    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    CGRect rectangle = CGRectMake(210, 150, 60, 30);
//    CGContextAddEllipseInRect(ctx, rectangle);
//    CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
//    CGContextFillPath(ctx);
//
//    CGRect rectangle2 = CGRectMake(130, 150, 60, 30);
//    CGContextAddEllipseInRect(ctx, rectangle2);
//    CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
//    CGContextFillPath(ctx);
//
//
//    //多边形
////    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    CGContextBeginPath(ctx);
//
//    CGContextMoveToPoint(ctx, 200, 60);
//    CGContextAddLineToPoint(ctx, 230, 100);
//    CGContextAddLineToPoint(ctx, 170, 100);
//    CGContextClosePath(ctx);
//
//    CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
//    CGContextFillPath(ctx);
//
//
//    //弧度
////    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    CGContextBeginPath(ctx);
//    CGContextMoveToPoint(ctx, 134, 125);
//    CGContextAddQuadCurveToPoint(ctx, 50, 100, 100, 170);
//
//    CGContextSetLineWidth(ctx, 10);
//    CGContextSetStrokeColorWithColor(ctx, [UIColor brownColor].CGColor);
//    CGContextStrokePath(ctx);
//
//
//    CGContextBeginPath(ctx);
//    CGContextMoveToPoint(ctx, 266, 125);
//    CGContextAddQuadCurveToPoint(ctx, 350, 100, 300, 170);
//
//    CGContextSetLineWidth(ctx, 10);
//    CGContextSetStrokeColorWithColor(ctx, [UIColor brownColor].CGColor);
//    CGContextStrokePath(ctx);
//
//
//    CGContextBeginPath(ctx);
//    CGContextMoveToPoint(ctx, 200, 170);
//    CGContextAddCurveToPoint(ctx, 200, 200, 230, 220, 200, 240);
//
//    CGContextSetLineWidth(ctx, 10);
//    CGContextSetStrokeColorWithColor(ctx, [UIColor brownColor].CGColor);
//    CGContextStrokePath(ctx);
    
    
    //阴影
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    CGContextAddArc(ctx, 200, 200, 100, 0, 2 * M_PI, 1);
//    CGContextSetShadowWithColor(ctx, CGSizeMake(10, 10), 20.0f, [[UIColor grayColor] CGColor]);
//    CGContextSetFillColorWithColor(ctx, [UIColor yellowColor].CGColor);
//    CGContextFillPath(ctx);
    
    
//
//    //放射式渐变
//    //先创造一个CGGradientRef,颜色是白,黑,location分别是0,1
//    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
//    NSArray* gradientColors = [NSArray arrayWithObjects:
//                               (id)[UIColor whiteColor].CGColor,
//                               (id)[UIColor blackColor].CGColor, nil];
//    CGFloat gradientLocations[] = {0, 1};
//
//    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace,
//                                                        (__bridge CFArrayRef)gradientColors,
//                                                        gradientLocations);
//    CGPoint startCenter = CGPointMake(CGRectGetMidX(rect), CGRectGetMidY(rect));
//    CGFloat radius = MAX(CGRectGetHeight(rect), CGRectGetWidth(rect));
//
//
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextDrawRadialGradient(context, gradient,
//                                startCenter, 0,
//                                startCenter, radius,
//                                0);
//
//    CGGradientRelease(gradient);
//    CGColorSpaceRelease(colorSpace);
    
    
    
    //线性渐变
//    CGPoint startPoint = CGPointMake(100, 100);
//    CGPoint endPoint = CGPointMake(300, 100);
//    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
//    NSArray* gradientColors = [NSArray arrayWithObjects:
//                               (id)[UIColor whiteColor].CGColor,
//                               (id)[UIColor purpleColor].CGColor, nil];
//    CGFloat gradientLocations[] = {0, 1};
//
//    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace,
//                                                        (__bridge CFArrayRef)gradientColors,
//                                                        gradientLocations);
//
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSaveGState(context);
//    CGContextDrawLinearGradient(context, gradient, startPoint, endPoint,0);
//    CGContextRestoreGState(context);
//    CGGradientRelease(gradient);
//    CGColorSpaceRelease(colorSpace);
    
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    NSArray* gradientColors = [NSArray arrayWithObjects:
                               (id)[UIColor whiteColor].CGColor,
                               (id)[UIColor purpleColor].CGColor, nil];
    CGFloat gradientLocations[] = {0, 1};

    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace,
                                                        (__bridge CFArrayRef)gradientColors,
                                                        gradientLocations);

    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddArc(context, 100, 100, 60, 1.04 , 2.09 , 0);
    CGContextClosePath(context);
    CGContextClip(context);

    CGPoint endshine;
    CGPoint startshine;
    startshine = CGPointMake(100 + 60 * cosf( 1.57 ),100+ 60 * sinf( 1.57 ));
    endshine = CGPointMake(100,100);
    CGContextDrawLinearGradient(context,gradient , startshine, endshine, kCGGradientDrawsAfterEndLocation);
    CGContextRestoreGState(context);
}


@end
