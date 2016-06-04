//
//  MyTabBarController.m
//  01-微信通讯录
//
//  Created by 王炯 on 16/6/3.
//  Copyright © 2016年 王炯. All rights reserved.
//

#import "MyTabBarController.h"

@interface MyTabBarController ()

@end

@implementation MyTabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //在这里面初始化4个navigation Controller
    [self setUpNavigationController];
    
}



-(void)setUpNavigationController
{
    //(1)Recent
    UINavigationController *nav1 = [self storyBoardName:@"Rencent"];
    
    //设置底部tabBar的显示信息
    nav1.title = @"通话记录";

    nav1.tabBarItem.image = [UIImage imageNamed:@"icon_tab_calllog"];
    
    nav1.tabBarItem.selectedImage = [UIImage imageNamed:@"icon_tab_calllog_selected"];
    
    
    
    //(2)Contact
    UINavigationController *nav2 = [self storyBoardName:@"Contact"];
    
    //设置底部tabBar的显示信息
    nav2.title = @"联系人";
    
    nav2.tabBarItem.image = [UIImage imageNamed:@"icon_tab_contact"];
    
    nav2.tabBarItem.selectedImage = [UIImage imageNamed:@"icon_tab_contact_selected"];
    
    
    
    
    //(3)Keyboard
    UINavigationController *nav3 = [self storyBoardName:@"Keybord"];
    
    //设置底部tabBar的显示信息
    nav3.title = @"拨号";
    
    nav3.tabBarItem.image = [UIImage imageNamed:@"icon_tab_Dial"];
    
    nav3.tabBarItem.selectedImage = [UIImage imageNamed:@"icon_tab_Dia_selectedl"];

    
    
    
    
    //(4)Setting
    UINavigationController *nav4 = [self storyBoardName:@"Setting"];
    
    
    
    //设置底部tabBar的显示信息
    nav4.title = @"设置";
    
    nav4.tabBarItem.image = [UIImage imageNamed:@"icon_tab_setting"];
    
    nav4.tabBarItem.selectedImage = [UIImage imageNamed:@"icon_tab_setting_selected"];

    
    
    
    
    
    //将5个navigationController添加到tabbarController
    self.viewControllers = @[nav1,nav2,nav3,nav4];
    
    
}


//封装成一个方法，用storyboard名来创建navigationController
-(UINavigationController *)storyBoardName:(NSString *)sbName
{
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:sbName bundle:nil];
    
    UINavigationController *nav = [storyBoard instantiateInitialViewController];
    
    return nav;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}







@end
