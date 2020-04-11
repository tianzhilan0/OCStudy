//
//  DrawView.m
//  Draw
//
//  Created by 李闯 on 2020/4/9.
//  Copyright © 2020 李闯. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
//    push：UIGraphicsPushContext(context)把context压入栈中，并把context设置为当前绘图上下文
//    pop：UIGraphicsPopContext将栈顶的上下文弹出，恢复先前的上下文，但是绘图状态不变
//    [[UIColor redColor] setFill];
//    UIGraphicsPushContext(UIGraphicsGetCurrentContext());
//    [[UIColor orangeColor] setFill];
//    UIGraphicsPopContext();
//    UIRectFill(CGRectMake(90, 340, 100, 100)); // orange color

    
//    save：CGContextSaveGState 压栈当前的绘图状态，仅仅是绘图状态，不是绘图上下文
//    restore：恢复刚才保存的绘图状态
//    [[UIColor redColor] setFill];
//    CGContextSaveGState(UIGraphicsGetCurrentContext());
//    [[UIColor orangeColor] setFill];
//    CGContextRestoreGState(UIGraphicsGetCurrentContext());
//    UIRectFill(CGRectMake(90, 200, 100, 100)); // red
    
    
//     1. 获取当前控件的图形上下文
//        // CG:表示这个类在CoreGraphics框架里  Ref:引用
//        CGContextRef context = UIGraphicsGetCurrentContext();
//    // 2. 描述绘画内容
//    //    a. 创建图形路径
//        CGMutablePathRef path = CGPathCreateMutable();
//    //    b. 创建图形起始点
//        CGPathMoveToPoint(path, NULL, 50, 50);
//    //    c. 添加图形的终点
//        CGPathAddLineToPoint(path, NULL, 200, 50);
//        CGPathAddLineToPoint(path, NULL, 200, 200);
//        CGPathAddLineToPoint(path, NULL, 50, 200);
//    // 3. 把绘画内容添加到图形上下文
//        CGContextAddPath(context, path);
//    // 4. 设置图形上下文的状态（线宽、颜色等）
//        CGContextSetLineWidth(context, 5);
//        CGContextSetRGBStrokeColor(context, 0, 1, 0, 1);
//    // 5. 渲染图形上下文
//        CGContextStrokePath(context);
    
    
//    // 1. 创建贝瑟尔路径
//    UIBezierPath *path = [UIBezierPath bezierPath];
//    // 2. 设置起点
//    [path moveToPoint:CGPointMake(20, 20)];
//    // 3. 设置终点
//    [path addLineToPoint:CGPointMake(80, 150)];
//    // 4. 设置路径状态
//    // 设置颜色
//    [[UIColor redColor] set];
//    // 设置线宽
//    [path setLineWidth:5];
//    // 4. 绘制路径
//    [path stroke];
    
    
//    // 1. 创建贝瑟尔路径
//    UIBezierPath *path1 = [UIBezierPath bezierPath];
//    // 2. 设置起点
//    [path1 moveToPoint:CGPointMake(50, 20)];
//    // 3. 设置拐点
//    [path1 addLineToPoint:CGPointMake(200, 100)];
//    // 3. 设置终点
//    [path1 addLineToPoint:CGPointMake(50, 180)];
//    // 4. 设置路径状态
//    // 设置颜色
//    [[UIColor blueColor] set];
//    // 设置线宽
//    [path1 setLineWidth:15];
//     // 设置连接样式
//    [path1 setLineJoinStyle:kCGLineJoinRound];
//    // 设置顶角样式
//    [path1 setLineCapStyle:kCGLineCapRound];
//    // 4. 绘制路径
//    [path1 stroke];
  
    
//    // 画一段圆弧
//    UIBezierPath *bezierPath = [[UIBezierPath alloc] init];
//    [[UIColor redColor] setStroke];
//    bezierPath.lineWidth = 11;
//    bezierPath.lineCapStyle = kCGLineCapSquare;
////    bezierPath.lineJoinStyle = kCGLineJoinRound;
//    [bezierPath moveToPoint:CGPointMake(150, 100)];
//    [bezierPath addArcWithCenter:CGPointMake(100, 100) radius:50 startAngle:0 endAngle:M_PI clockwise:YES];
//    [bezierPath stroke];
//
//    UIBezierPath *bezierPath1 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(300, 100) radius:50 startAngle:0 endAngle:M_PI_2 clockwise:NO];
//    bezierPath1.lineWidth = 5;
//    [[UIColor orangeColor] setStroke];
//    [bezierPath1 stroke];
    
    
//    // 画圆
//    UIBezierPath *bezierPath2 = [[UIBezierPath alloc] init];
//    [[UIColor redColor] setStroke];
//    bezierPath2.lineWidth = 8;
//    [bezierPath2 moveToPoint:CGPointMake(150, 250)];
//    [bezierPath2 addArcWithCenter:CGPointMake(100, 250) radius:50 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
//    [bezierPath2 stroke];
//
//    UIBezierPath *bezierPath3 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(300, 250) radius:50 startAngle:0 endAngle:M_PI * 2 clockwise:NO];
//    [[UIColor orangeColor] setFill];
//    [bezierPath3 fill];
    
    
//    // 通过矩形来画出其内切圆或内切椭圆
//    UIBezierPath *bezierPath4 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(50, 350, 100, 100)];
//    [[UIColor orangeColor] setStroke];
//    [bezierPath4 stroke];
//
//    UIBezierPath *bezierPath5 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(250, 350, 100, 50)];
//    [[UIColor orangeColor] setStroke];
//    [bezierPath5 stroke];
//
//    // 画矩形
//    UIBezierPath *bezierPath6 = [[UIBezierPath alloc] init];
//    [[UIColor redColor] setStroke];
//    bezierPath6.lineWidth = 11;
//    bezierPath6.lineCapStyle = kCGLineCapButt;
//    bezierPath6.lineJoinStyle = kCGLineJoinRound;
//    [bezierPath6 moveToPoint:CGPointMake(50, 500)];
//    [bezierPath6 addLineToPoint:CGPointMake(150, 500)];
//    [bezierPath6 addLineToPoint:CGPointMake(150, 600)];
//    [bezierPath6 addLineToPoint:CGPointMake(50, 600)];
//    [bezierPath6 closePath];// 或者[bezierPath addLineToPoint:CGPointMake(100, 100)];
//    [bezierPath6 stroke];
//
//    UIBezierPath *bezierPath7 = [UIBezierPath bezierPathWithRect:CGRectMake(250, 500, 100, 100)];
//    [[UIColor orangeColor] setStroke];
//    [bezierPath7 stroke];
    
    
//    // 画圆角矩形
//    UIBezierPath *bezierPath8 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(50, 650, 100, 100) cornerRadius:10];
//    [[UIColor orangeColor] setStroke];
//    [bezierPath8 stroke];
//
//    // 画指定圆角的矩形
//    UIBezierPath *bezierPath9 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(250, 650, 100, 100) byRoundingCorners:(UIRectCornerTopLeft | UIRectCornerBottomRight) cornerRadii:CGSizeMake(20, 0)];
//    [[UIColor orangeColor] setStroke];
//    [bezierPath9 stroke];
    
    
//    // 画一条二次贝塞尔曲线
//    UIBezierPath *bezierPath = [[UIBezierPath alloc] init];
//    [[UIColor redColor] setStroke];
//    bezierPath.lineWidth = 11;
//    [bezierPath moveToPoint:CGPointMake(100, 200)];
//    [bezierPath addQuadCurveToPoint:CGPointMake(200, 200) controlPoint:CGPointMake(150, 300)];
//    [bezierPath addQuadCurveToPoint:CGPointMake(300, 200) controlPoint:CGPointMake(250, 100)];
//    [bezierPath addQuadCurveToPoint:CGPointMake(400, 200) controlPoint:CGPointMake(350, 300)];
//    [bezierPath stroke];
    
    
//    // 画一条三次贝塞尔曲线
//    UIBezierPath *bezierPath1 = [[UIBezierPath alloc] init];
//    [[UIColor redColor] setStroke];
//    bezierPath1.lineWidth = 11;
//    [bezierPath1 moveToPoint:CGPointMake(100, 200)];
//    [bezierPath1 addCurveToPoint:CGPointMake(300, 200) controlPoint1:CGPointMake(150, 350) controlPoint2:CGPointMake(250, 50)];
//    [bezierPath1 stroke];
    
    
//    // 画一条虚线
//    UIBezierPath *bezierPath2 = [[UIBezierPath alloc] init];
//    [[UIColor redColor] setStroke];
//    CGFloat pattern[] = {10, 10};
//    [bezierPath2 setLineDash:pattern count:1 phase:2];
//    [bezierPath2 moveToPoint:CGPointMake(100, 100)];
//    [bezierPath2 addLineToPoint:CGPointMake(300, 100)];
//    [bezierPath2 stroke];
    
    
//    //虚线组成的圆，下面有图片
//    UIBezierPath *bezierPath3 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(100, 100) radius:50 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
//    [[UIColor redColor] setStroke];
//    bezierPath3.lineWidth = 11;
//    CGFloat pattern3[] = {4, 5};
//    [bezierPath3 setLineDash:pattern3 count:2 phase:0];
//    [bezierPath3 stroke];
    
    
    
//    // 贝塞尔曲线的仿射变换
//    UIBezierPath *bezierPath4 = [UIBezierPath bezierPathWithRect:CGRectMake(300, 100, 100, 100)];
//    [[UIColor orangeColor] setStroke];
//    bezierPath4.lineWidth = 11;
//    bezierPath4.lineCapStyle = kCGLineCapButt;
//    bezierPath4.lineJoinStyle = kCGLineJoinRound;
//    [bezierPath4 applyTransform:CGAffineTransformMakeRotation(M_PI/4)];
//    [bezierPath4 stroke];
    
  
    
    //7、剪裁路径覆盖的区域
    // 把图片切成任意你想要的形状显示
    UIBezierPath *bezierPath5 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(100, 100, 100, 100) byRoundingCorners:(UIRectCornerTopLeft | UIRectCornerBottomRight) cornerRadii:CGSizeMake(40, 0)];
    [[UIColor orangeColor] setStroke];
    [[UIColor clearColor] setFill];
    [bezierPath5 stroke];
    [bezierPath5 fill];
    [bezierPath5 addClip];// 剪裁路径覆盖的区域

    
}

@end
