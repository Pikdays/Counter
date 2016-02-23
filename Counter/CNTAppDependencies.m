//
// Created by chengxin on 16/2/22.
// Copyright (c) 2016 Mutual Mobile. All rights reserved.
//

#import "CNTAppDependencies.h"
#import "RootWireframe.h"
#import "CNTCountWireframe.h"
#import "CNTCountPresenter.h"
#import "CNTCountInteractor.h"

@interface CNTAppDependencies ()

@property(nonatomic, strong) CNTCountWireframe *countWireframe;

@end

@implementation CNTAppDependencies

- (instancetype)init {
    if ((self = [super init])) {
        [self configureDependencies];
    }

    return self;
}

- (void)configureDependencies {
    // Root Level Classes
    RootWireframe *rootWireframe = [[RootWireframe alloc] init];


    // Count Modules Classes
    CNTCountWireframe *countWireframe = [[CNTCountWireframe alloc] init];
    CNTCountPresenter *countPresenter = [[CNTCountPresenter alloc] init];
    CNTCountInteractor *countInteractor = [[CNTCountInteractor alloc] init];

    /********** I & P **********/
    countInteractor.output = countPresenter;
    countPresenter.input = countInteractor;

    /********** R = P + R **********/
    countWireframe.countPresenter = countPresenter;
    countWireframe.rootWireframe = rootWireframe;
    self.countWireframe = countWireframe;
}

- (void)installRootViewControllerIntoWindow:(UIWindow *)window {
    [self.countWireframe presentCountInterfaceFromWindow:window];
}

@end