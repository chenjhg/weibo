//
//  BaseTabBarVC.m
//  weiBoDemo
//
//  Created by wjm on 16/8/19.
//  Copyright © 2016年 XH. All rights reserved.
//

#import "BaseTabBarVC.h"

#import "NewfeatureVC.h"
#import "HomeVC.h"
#import "XHMessageCenterVC.h"
#import "MeVC.h"

#import "BaseNavVC.h"
#import "XHTabBar.h"

@interface BaseTabBarVC ()<XHTabBardelegate>

@end

@implementation BaseTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addChildViewWithClass:[[NewfeatureVC alloc]init]title:@"首页" image:@"tabbar_home" selelctedImage:@"tabbar_home_selected"];
    
    [self addChildViewWithClass:[[XHMessageCenterVC alloc]init]title:@"消息" image:@"tabbar_message_center" selelctedImage:@"tabbar_message_center_selected"];
    [self addChildViewWithClass:[[HomeVC alloc]init]title:@"发现" image:@"tabbar_discover" selelctedImage:@"tabbar_discover_selected"];
    [self addChildViewWithClass:[[MeVC alloc]init]title:@"我" image:@"tabbar_profile" selelctedImage:@"tabbar_profile_selected"];
    XHTabBar *xhTabBar = [[XHTabBar alloc] init];

    xhTabBar.delegate = self;
    xhTabBar.XHdelegate = self;
    [self setValue:xhTabBar forKey:@"tabBar"];
}

- (void)addChildViewWithClass:(UIViewController *)childVC title:(NSString *)title image:(NSString *)image selelctedImage:(NSString *)selectedimage
{
    childVC.title = title;
    [childVC.tabBarItem setImage:[UIImage imageNamed:image]];
    [childVC.tabBarItem setSelectedImage:[UIImage imageNamed:selectedimage]];
    
    BaseNavVC *baseNav = [[BaseNavVC alloc] initWithRootViewController:childVC];
    // 设置导航栏属性
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor],NSFontAttributeName:[UIFont systemFontOfSize:20]}];
    baseNav.navigationBar.translucent = 0;
    
    // 设置tabBarItem属性
    [childVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:123/255.0 green:123/255.0 blue:123/255.0 alpha:1],NSFontAttributeName:[UIFont systemFontOfSize:13]} forState:UIControlStateNormal];
    [childVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]} forState:UIControlStateSelected];
    
    [self addChildViewController:baseNav];
}

- (void)XHTabBarDidClickBtn
{
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor whiteColor];
    
//    [self. presentViewController:vc animated:YES completion:^{}];
//    [self.navigationController pushViewController:vc animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
