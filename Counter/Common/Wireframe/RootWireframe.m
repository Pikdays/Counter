//
//  RootWireframe.m
//  VIPERDEMO
//
//  Created by Pikdays on 21/02/16.
//
//

#import "RootWireframe.h"

@implementation RootWireframe

- (void)showRootViewController:(UIViewController *)viewController inWindow:(UIWindow *)window {
    window.rootViewController = viewController;
}

@end