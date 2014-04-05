//
//  MMAppDelegate.m
//  Loose Leaf
//
//  Created by Adam Wulf on 6/7/12.
//  Copyright (c) 2012 Milestone Made, LLC. All rights reserved.
//

#import "MMAppDelegate.h"

#import "MMLooseLeafViewController.h"
#import "MMTouchDotView.h"
#import <Crashlytics/Crashlytics.h>

@implementation MMAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"launching");
    [Crashlytics startWithAPIKey:@"9e59cb6d909c971a2db30c84cb9be7f37273a7af"];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[MMLooseLeafViewController alloc] init];
    // [[MMLooseLeafViewController alloc] initWithNibName:@"MMPaperStackViewController" bundle:nil];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
//    [self.window.layer setSpeed:.5f];
    MMTouchDotView* blueDots = [[MMTouchDotView alloc] initWithFrame:self.window.bounds];
    [self.window addSubview:blueDots];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
