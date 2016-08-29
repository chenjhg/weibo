//
//  XHTabBar.m
//  weiBoDemo
//
//  Created by wjm on 16/8/19.
//  Copyright © 2016年 XH. All rights reserved.
//

#import "XHTabBar.h"
#import "UIView+EXtension.h"

@interface XHTabBar()

@property (weak, nonatomic)UIButton *plusBtn;

@end

@implementation XHTabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"] forState:UIControlStateHighlighted];
        [btn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:UIControlStateHighlighted];
        btn.size = btn.currentBackgroundImage.size;
        [btn addTarget:self.XHdelegate action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
         _plusBtn = btn;
        
    }
    return self;
}

- (void)btnClick
{
    if ([self.XHdelegate respondsToSelector:@selector(XHTabBarDidClickBtn)])
    {
        [self.XHdelegate XHTabBarDidClickBtn];
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    NSInteger index = 0;
    CGFloat width = self.wid/5;
//    self.plusBtn.frame = CGRectMake(self.centerX,self.centerY ,width , 44);
    self.plusBtn.centerX = self.wid*0.5;
    self.plusBtn.centerY = self.heigh*0.5;
    
    for (UIView *view in self.subviews)
    {
        Class commonclass = NSClassFromString(@"UITabBarButton");
        if ([view isKindOfClass:[commonclass class]])
        {
            view.x = index*width;
            view.y = 0;
            view.size = CGSizeMake(width, self.heigh);
            index++;
            if (index == 2)
            {
                index++;
            }
        }
    }
}

@end
