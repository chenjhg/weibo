//
//  XHTabBar.h
//  weiBoDemo
//
//  Created by wjm on 16/8/19.
//  Copyright © 2016年 XH. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol XHTabBardelegate <UITabBarDelegate>

- (void)XHTabBarDidClickBtn;

@end

@interface XHTabBar : UITabBar

@property (weak, nonatomic)id <XHTabBardelegate>XHdelegate;

@end
