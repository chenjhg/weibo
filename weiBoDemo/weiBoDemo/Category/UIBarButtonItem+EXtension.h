//
//  UIBarButtonItem+EXtension.h
//  weiBoDemo
//
//  Created by wjm on 16/8/19.
//  Copyright © 2016年 XH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (EXtension)

+ (instancetype)itemWithBarButtonWithTitle:(NSString *)title imageName:(NSString *)image selectedImage:(NSString *)selectedImage target:(id) target action:(SEL)action;

@end
