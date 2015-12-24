//
//  CNTAppDelegate.m
//  Counter
//
//  Created by Jeff Gilbert on 8/22/13.
//  Copyright (c) 2013 Mutual Mobile. All rights reserved.
//

#import "CNTAppDelegate.h"
#import "CNTCountInteractor.h"
#import "CNTCountPresenter.h"
#import "CNTCountViewController.h"


@implementation CNTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    [self createScreen];

    [self.window makeKeyAndVisible];
    return YES;
}


- (void)createScreen {
    CNTCountViewController *viewController = [[CNTCountViewController alloc] init];
    CNTCountPresenter *presenter = [[CNTCountPresenter alloc] init];
    CNTCountInteractor *interactor = [[CNTCountInteractor alloc] init];

    viewController.presenter = presenter; // VC + 展示器
    presenter.view = viewController; // 权 设置代理

    presenter.interactor = interactor; // 权 设置代理
    interactor.output = presenter; // 权 设置代理

    self.window.rootViewController = viewController;
}

@end
