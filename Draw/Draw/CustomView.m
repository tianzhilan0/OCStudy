//
//  CustomView.m
//  Draw
//
//  Created by 李闯 on 2020/4/9.
//  Copyright © 2020 李闯. All rights reserved.
//

#import "CustomView.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@interface CustomView()

@property (assign, nonatomic) float waveAmplitude;// 振幅
@property (assign, nonatomic) float waveSpeed;// 波纹流动的速度
@property (assign, nonatomic) float waveOffset;// 初相

@end

@implementation CustomView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        // 初始值
        self.waveAmplitude = 50;
        self.waveSpeed = 20.0;
        self.waveOffset = 0.0;
        
        CADisplayLink *displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(wave)];
        [displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:(NSRunLoopCommonModes)];
    }
    
    return self;
}


- (void)drawRect:(CGRect)rect {
    
    self.waveOffset += self.waveSpeed;
    
    UIBezierPath *bezierPath = [[UIBezierPath alloc] init];
    [[UIColor redColor] setStroke];
    bezierPath.lineWidth = 2;
    
    // 起始点
    [bezierPath moveToPoint:CGPointMake(0, self.waveAmplitude)];
    
    // 连接各点
    for (CGFloat x = 0.0; x < kScreenWidth; x++) {
        
        CGFloat y = 100 + self.waveAmplitude * sinf(3 * M_PI * x / kScreenWidth + self.waveOffset * M_PI / kScreenWidth);
        [bezierPath addLineToPoint:CGPointMake(x, y)];
    }
    
    // 渲染
    [bezierPath stroke];
//    sleep(2);
}

- (void)wave {
    
    [self setNeedsDisplay];
}



@end
