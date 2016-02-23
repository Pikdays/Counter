//
// Created by chengxin on 16/2/22.
// Copyright (c) 2016 Mutual Mobile. All rights reserved.
//

#import "BYTCountWireframe.h"

#import "RootWireframe.h"

#import "BYTCountViewController.h"
#import "BYTCountPresenter.h"

@interface BYTCountWireframe ()

@property(nonatomic, strong) BYTCountViewController *countViewController;

@end

@implementation BYTCountWireframe

- (void)presentCountInterfaceFromWindow:(UIWindow *)window {
    /********** V & P **********/
    self.countViewController = [BYTCountViewController instantiateViewControllerFromNib];
    self.countViewController.presenter = self.countPresenter;
    self.countPresenter.view = self.countViewController;

    /********** Root **********/
    [self.rootWireframe showRootViewController:self.countViewController inWindow:window];
}

@end