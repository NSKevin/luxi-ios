//
//  LuxiAppDelegate.h
//  Luxi
//
//  Created by Alina Kholcheva on 7/8/13.
//  Copyright (c) 2013 Alina Kholcheva. All rights reserved.
//

#import "LuxiAppDelegate.h"
#import "UIDevice-Hardware.h"

@implementation LuxiAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after
    
    UIStoryboard* mainStoryBoard = [self getStoryboard];
    UIViewController *initialViewController = [mainStoryBoard instantiateInitialViewController];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = initialViewController;
    [self.window makeKeyAndVisible];
    
    
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

-(UIStoryboard*) getStoryboard {
    UIStoryboard *storyBoard = nil;
    NSUInteger deviceFamily = [[UIDevice currentDevice] deviceFamily];
    NSUInteger platformType = [[UIDevice currentDevice] platformType];

    if (deviceFamily == UIDeviceFamilyiPad) {
        storyBoard = [UIStoryboard storyboardWithName:@"Storyboard_iPad" bundle:nil];
    }else {
            // The iOS device = iPhone or iPod Touch
            if (platformType == UIDevice4iPhone || platformType == UIDevice4SiPhone){
                // iPhone 4
                storyBoard = [UIStoryboard storyboardWithName:@"Storyboard_iPhone4" bundle:nil];
                
            } else {
                // other iPhones
                storyBoard = [UIStoryboard storyboardWithName:@"Storyboard_iPhoneMain" bundle:nil];
            }
    }
    return storyBoard;
}


@end
