//
//  AppDelegate.m
//  1TechEffect
//
//  Created by あのん の MacBook Pro on 2014/10/30.
//  Copyright (c) 2014年 内田和希. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Override point for customization after application launch.
    
    //3.5_4inchを読み分けする
    UIStoryboard *storyboard; // storyboardの型宣言
    NSString * storyBoardName;
    CGRect rect = [UIScreen mainScreen].bounds;
    
    if (rect.size.height == 568) {
        storyBoardName = @"4_0";
        NSLog(@"4.0");
    }else if(rect.size.height ==667) {
        storyBoardName = @"4_7";
        NSLog(@"4.7");
    }else if(rect.size.height ==480) {
        storyBoardName = @"3_5";
        NSLog(@"3_5");
    }else{storyBoardName = @"Main";
        NSLog(@"5_5");
        
    }
    
    storyboard = [UIStoryboard storyboardWithName:storyBoardName bundle:nil];
    
    UIViewController *mainViewContriller = [storyboard instantiateInitialViewController];
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = mainViewContriller;
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
