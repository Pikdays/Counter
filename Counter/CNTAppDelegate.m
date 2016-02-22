//
//  CNTAppDelegate.m
//  Counter
//
//  Created by Jeff Gilbert on 8/22/13.
//  Copyright (c) 2013 Mutual Mobile. All rights reserved.
//

#import "CNTAppDelegate.h"
#import "CNTViewModel.h"
#import "CNTCountViewController.h"


@implementation CNTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self createScreen];

    [self.window makeKeyAndVisible];
    return YES;
}


- (void)createScreen {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    CNTCountViewController *viewController = [[CNTCountViewController alloc] initWithNibName:@"CNTCountViewController" bundle:nil];
    CNTViewModel *viewModel = [[CNTViewModel alloc] init];

    self.window.rootViewController = viewController; // 权 设置代理
    viewController.viewModel = viewModel; // 权 设置代理 VC + 展示器
    viewModel.view = viewController; // 权 设置代理 xxx

}

@end
