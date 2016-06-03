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
    
    
    //(2)Contact
    UINavigationController *nav2 = [self storyBoardName:@"Contact"];
    
    
    //(3)Keyboard
    UINavigationController *nav3 = [self storyBoardName:@"Keybord"];
    
    //(4)Setting
    UINavigationController *nav4 = [self storyBoardName:@"Setting"];
    
    
    
    
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
