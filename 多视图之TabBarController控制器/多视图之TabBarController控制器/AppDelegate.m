//
//  AppDelegate.m
//  多视图之TabBarController控制器
//
//  Created by jacky zzxb on 17/8/23.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "AppDelegate.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    UITabBarController *tabbar = [[UITabBarController alloc] init];
    
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor redColor];
    vc.tabBarItem.image = [UIImage imageNamed:@"tab_recent_nor.png"];
    vc.tabBarItem.title = @"消息";
    vc.tabBarItem.badgeValue = @"10";
    [tabbar addChildViewController:vc];
    
    UIViewController *vc2 = [[UIViewController alloc] init];
    vc2.view.backgroundColor = [UIColor grayColor];
    vc2.tabBarItem.image = [UIImage imageNamed:@"tab_buddy_nor.png"];
    vc2.tabBarItem.title = @"联系人";
    [tabbar addChildViewController:vc2];
    
    UIViewController *vc3 = [[UIViewController alloc] init];
    vc3.view.backgroundColor = [UIColor blueColor];
    vc3.tabBarItem.image = [UIImage imageNamed:@"tab_qworld_nor.png"];
    vc3.tabBarItem.title = @"朋友圈";
    vc3.tabBarItem.badgeValue = @"";
    [tabbar addChildViewController:vc3];
    
    UIViewController *vc4 = [[UIViewController alloc] init];
    vc4.view.backgroundColor = [UIColor greenColor];
    vc4.tabBarItem.image = [UIImage imageNamed:@"tab_me_nor.png"];
    vc4.tabBarItem.title = @"我";
    [tabbar addChildViewController:vc4];
    
    self.window.rootViewController = tabbar;
    
    
    [self.window makeKeyWindow];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
