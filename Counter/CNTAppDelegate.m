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

    CNTAppDependencies *dependencies = [[CNTAppDependencies alloc] initWithWindow:_window];
    [dependencies installRootViewController];

    [self.window makeKeyAndVisible];
    return YES;
}

@end
