//
//  CNTAppDelegate.m
//  Counter
//
//  Created by Jeff Gilbert on 8/22/13.
//  Copyright (c) 2013 Mutual Mobile. All rights reserved.
//

#import "CNTAppDelegate.h"
#import "CNTCountInteractor.h"
#import "CNTCountViewController.h"
#import "CNTAppDependencies.h"


@implementation CNTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    CNTAppDependencies *dependencies = [[CNTAppDependencies alloc] init];
    [dependencies installRootViewControllerIntoWindow:self.window]; // 加载 RootVC 到 Window 中

    [self.window makeKeyAndVisible];
    return YES;
}

@end
