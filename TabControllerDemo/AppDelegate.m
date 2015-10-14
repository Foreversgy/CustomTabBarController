//
//  AppDelegate.m
//  TabControllerDemo
//
//  Created by ShiMac on 15/10/13.
//  Copyright (c) 2015年 guoyan. All rights reserved.
//

#import "AppDelegate.h"
#import "CustomTabBarController.h"
#import "BounchAnimation.h"
#import "TransitionAnimation.h"
#import "RotationAnimation.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window=[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    CustomTabBar *item1=[[CustomTabBar alloc] initWithTitle:@"drop" image:[UIImage imageNamed:@"drop"] selectedImage:[UIImage imageNamed:@"drop"]];
    BounchAnimation *dele1=[[BounchAnimation alloc] init];
    item1.delegate=dele1;
    UIViewController *controller1=[[UIViewController alloc] init];
    controller1.tabBarItem=item1;
    controller1.view.backgroundColor=[UIColor redColor];
    
    CustomTabBar *item2=[[CustomTabBar alloc] initWithTitle:@"pin" image:[UIImage imageNamed:@"pin"] selectedImage:[UIImage imageNamed:@"pin"]];
    TransitionAnimation *dele2=[[TransitionAnimation alloc] init];
    item2.delegate=dele2;
    UIViewController *controller2=[[UIViewController alloc]
                                   init];
    controller2.tabBarItem=item2;
    controller1.view.backgroundColor=[UIColor orangeColor];
    
    CustomTabBar *item3=[[CustomTabBar alloc] initWithTitle:@"set" image:[UIImage imageNamed:@"Setting"] selectedImage:[UIImage imageNamed:@"Setting"]];
    RotationAnimation *dele3=[[RotationAnimation alloc] init];
    item3.delegate=dele3;
    UIViewController *controller3=[[UIViewController alloc] init];
    controller3.tabBarItem=item3;
    controller3.view.backgroundColor=[UIColor grayColor];
    
    CustomTabBar *item4=[[CustomTabBar alloc] initWithTitle:@"tool" image:[UIImage imageNamed:@"Tools"] selectedImage:[UIImage imageNamed:@"Tools"]];
    BounchAnimation *dele4=[[BounchAnimation alloc] init];
    item4.delegate=dele4;
    UIViewController *controller4=[[UIViewController alloc] init];
    controller4.tabBarItem=item4;
    
    CustomTabBar *item5=[[CustomTabBar alloc] initWithTitle:@"user" image:[UIImage imageNamed:@"user"] selectedImage:[UIImage imageNamed:@"user"]];
    BounchAnimation *dele5=[[BounchAnimation alloc] init];
    item5.delegate=dele5;
    UIViewController *controller5=[[UIViewController alloc] init];
    controller5.tabBarItem=item5;
    
    
    CustomTabBarController *tapController=[[CustomTabBarController alloc] init];
    tapController.viewControllers=@[controller1,controller2,controller3,controller4,controller5];
    
    
    self.window.rootViewController=tapController;
    [self.window makeKeyAndVisible];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
