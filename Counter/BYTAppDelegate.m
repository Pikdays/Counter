//
//  BYTAppDelegate.m
//  Counter
//
//  Created by Jeff Gilbert on 8/22/13.
//  Copyright (c) 2013 Mutual Mobile. All rights reserved.
//

#import "BYTAppDelegate.h"
#import "BYTAppDependencies.h"


@implementation BYTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    BYTAppDependencies *dependencies = [[BYTAppDependencies alloc] init];
    [dependencies installRootViewControllerIntoWindow:self.window]; // 加载 RootVC 到 Window 中

    [self.window makeKeyAndVisible];
    return YES;
}

@end
