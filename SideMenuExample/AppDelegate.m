//
//  AppDelegate.m
//  SideMenuExample
//
//  Created by ZAL-01M on 12/8/15.
//  Copyright © 2015 zeta. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "SideMenuViewController.h"

@interface AppDelegate ()
{
    UINavigationController *navigation;
}
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    ViewController *viewCtrl=[[ViewController alloc]init];
    navigation=[[UINavigationController alloc]initWithRootViewController:viewCtrl];
    
    navigation.navigationBar.barTintColor = [UIColor colorWithRed:72.0/255.0 green:144.0/255.0 blue:226.0/255.0 alpha:1];
    SideMenuViewController *leftMenuViewController = [[SideMenuViewController alloc] init];
    
    MFSideMenuContainerViewController *container = [MFSideMenuContainerViewController
                                                    containerWithCenterViewController:navigation
                                                    leftMenuViewController:leftMenuViewController
                                                    rightMenuViewController:nil];
    
    
    self.window.rootViewController=container;
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
