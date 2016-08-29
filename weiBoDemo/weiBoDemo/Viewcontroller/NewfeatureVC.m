//
//  NewfeatureVC.m
//  weiBoDemo
//
//  Created by wjm on 16/8/19.
//  Copyright © 2016年 XH. All rights reserved.
//

#import "NewfeatureVC.h"


@interface NewfeatureVC ()

@end

@implementation NewfeatureVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.navigationController.title = @"Newfeature";
    self.view.backgroundColor = [UIColor greenColor];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UIViewController *vc = [[UIViewController alloc] init];
    vc.title = @"title";
    vc.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
