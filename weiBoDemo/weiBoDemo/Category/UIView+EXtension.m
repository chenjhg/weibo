//
//  UIView+EXtension.m
//  weiBoDemo
//
//  Created by wjm on 16/8/19.
//  Copyright © 2016年 XH. All rights reserved.
//

#import "UIView+EXtension.h"

@implementation UIView (EXtension)

- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setRect:(CGRect)rect
{
    CGRect frame = self.frame;
    frame = rect;
    self.frame = frame;
}

- (CGRect)rect
{
    return self.frame;
}

-(void)setWid:(CGFloat)wid
{
    CGRect rect = self.frame;
    rect.size.width = wid;
    self.frame = rect;
}

- (CGFloat)wid
{
    return self.frame.size.width;
}

- (void)setHeigh:(CGFloat)heigh
{
    CGRect rect = self.frame;
    rect.size.height = heigh;
    self.frame = rect;
}

- (CGFloat)heigh
{
    return self.frame.size.height;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint point = self.center;
    point.x = centerX;
    self.center = point;
}

- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint point = self.center;
    point.y = centerY;
    self.center = point;
}

- (CGFloat)centerY
{
    return self.center.y;
}

- (void)setSize:(CGSize)size
{
    CGRect rect = self.frame;
    rect.size = size;
    self.frame = rect;
}

- (CGSize)size
{
    return self.frame.size;
}

@end
