//
// Created by chengxin on 16/2/22.
// Copyright (c) 2016 Mutual Mobile. All rights reserved.
//

#import "CNTCountWireframe.h"
#import "RootWireframe.h"
#import "CNTCountViewController.h"
#import "CNTCountPresenter.h"

@interface CNTCountWireframe ()

@property(nonatomic, strong) CNTCountViewController *countViewController;

@end

@implementation CNTCountWireframe

- (void)presentCountInterfaceFromWindow:(UIWindow *)window {
    /********** V & P **********/
    self.countViewController = [CNTCountViewController instantiateViewControllerFromNib];
    self.countViewController.countPresenter = self.countPresenter;
    self.countPresenter.view = self.countViewController;

    /********** Root **********/
    [self.rootWireframe showRootViewController:self.countViewController inWindow:window];
}

@end