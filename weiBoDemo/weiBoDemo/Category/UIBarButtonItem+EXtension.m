//
//  UIBarButtonItem+EXtension.m
//  weiBoDemo
//
//  Created by wjm on 16/8/19.
//  Copyright © 2016年 XH. All rights reserved.
//

#import "UIBarButtonItem+EXtension.h"
#import "UIView+EXtension.h"

@implementation UIBarButtonItem (EXtension)

+ (instancetype)itemWithBarButtonWithTitle:(NSString *)title imageName:(NSString *)image selectedImage:(NSString *)selectedImage target:(id) target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
//    [button setImage:[UIImage imageNamed:selectedImage] forState:UIControlStateHighlighted];
    [button setBackgroundColor:[UIColor redColor]];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    button.size = button.currentBackgroundImage.size;
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

@end
