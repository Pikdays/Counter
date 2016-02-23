//
// Created by chengxin on 16/2/22.
// Copyright (c) 2016 Mutual Mobile. All rights reserved.
//

#import "BYTAppDependencies.h"

#import "RootWireframe.h"
#import "BYTCountWireframe.h"

#import "BYTCountPresenter.h"
#import "BYTCountInteractor.h"

@interface BYTAppDependencies ()

@property(nonatomic, strong) RootWireframe *rootWireframe;
@property(nonatomic, strong) BYTCountWireframe *countWireframe;

@end

@implementation BYTAppDependencies

- (instancetype)init {
    if ((self = [super init])) {
        [self configureDependencies];
    }

    return self;
}

- (void)configureDependencies {
    // Root Level Classes
    self.rootWireframe = [[RootWireframe alloc] init];

    // Count Modules Classes
    BYTCountWireframe *countWireframe = [[BYTCountWireframe alloc] init];
    BYTCountPresenter *countPresenter = [[BYTCountPresenter alloc] init];
    BYTCountInteractor *countInteractor = [[BYTCountInteractor alloc] init];

    /********** I & P **********/
    countInteractor.output = countPresenter;
    countPresenter.input = countInteractor;

    /********** R = P + R **********/
    countWireframe.countPresenter = countPresenter;
    countWireframe.rootWireframe = self.rootWireframe;
    self.countWireframe = countWireframe;
}

- (void)installRootViewControllerIntoWindow:(UIWindow *)window {
    [self.countWireframe presentCountInterfaceFromWindow:window];
}

@end