//
//  MyNavigationController.m
//  01-微信通讯录
//
//  Created by 王炯 on 16/6/3.
//  Copyright © 2016年 王炯. All rights reserved.
//

#import "MyNavigationController.h"

@interface MyNavigationController ()

@end

@implementation MyNavigationController

- (void)viewDidLoad
{
    [super viewDidLoad];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}




-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    //隐藏底部的tabBarContller
    if (self.viewControllers.count>0)
    {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    [super pushViewController:viewController animated:animated];
    
}


@end
