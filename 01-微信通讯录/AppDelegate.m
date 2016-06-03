//
//  AppDelegate.m
//  01-微信通讯录
//
//  Created by 王炯 on 16/6/3.
//  Copyright © 2016年 王炯. All rights reserved.
//

#import "AppDelegate.h"
#import "MyTabBarController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    //(1)实例化window
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //(2)创建window的rootWindow
    self.window.rootViewController = [[MyTabBarController alloc] init];
    
    //(3)显示出来
    [self.window makeKeyAndVisible];
    
    
    return YES;
}









- (void)applicationWillResignActive:(UIApplication *)application
{
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    
}

@end
