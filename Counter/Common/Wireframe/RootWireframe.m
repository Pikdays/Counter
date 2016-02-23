//
//  RootWireframe.m
//  VIPERDEMO
//
//  Created by Pikdays on 21/02/16.
//
//

#import "RootWireframe.h"
#import "CNTCountInteractor.h"
#import "CNTCountViewController.h"
#import "CNTCountPresenter.h"

@implementation RootWireframe

- (void)showRootViewController:(UIViewController *)viewController inWindow:(UIWindow *)window {
    window.rootViewController = viewController;
}

@end