//
//  BaseNavVC.m
//  weiBoDemo
//
//  Created by wjm on 16/8/19.
//  Copyright © 2016年 XH. All rights reserved.
//

#import "BaseNavVC.h"
#import "UIBarButtonItem+EXtension.h"

@interface BaseNavVC ()

@end

@implementation BaseNavVC

+ (void)initialize
{
//    UIBarButtonItem *item = [UIBarButtonItem appearance];
    NSMutableDictionary *normalDic = [NSMutableDictionary dictionary];
    normalDic[NSForegroundColorAttributeName] = [UIColor redColor];
    normalDic[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    [[UIBarButtonItem appearance] setTitleTextAttributes:normalDic forState:UIControlStateNormal];
    
    NSMutableDictionary *disableDic = [NSMutableDictionary dictionary];
    disableDic[NSForegroundColorAttributeName] = [UIColor colorWithRed:123/255.0 green:123/255.0 blue:123/255.0 alpha:1];
    disableDic[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [[UIBarButtonItem appearance] setTitleTextAttributes:disableDic forState:UIControlStateDisabled];
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    //推进的第二个navVC
    if (self.viewControllers.count > 0)
    {
        viewController.hidesBottomBarWhenPushed = YES;
        // 返回按钮
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithBarButtonWithTitle:nil imageName:@"navigationbar_back" selectedImage:@"navigationbar_back_highlighted" target:self action:@selector(back)];

        // 右边按钮
        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithBarButtonWithTitle:nil imageName:@"navigationbar_more" selectedImage:@"navigationbar_more_highlighted" target:self action:@selector(more)];
        
    }
    [super pushViewController:viewController animated:animated];
}

- (void)back
{
    [self popViewControllerAnimated:YES];
}

- (void)more
{
    [self popToRootViewControllerAnimated:YES];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
