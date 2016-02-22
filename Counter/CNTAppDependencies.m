//
// Created by chengxin on 16/2/22.
// Copyright (c) 2016 Mutual Mobile. All rights reserved.
//

#import "CNTAppDependencies.h"
#import "RootWireframe.h"


@implementation CNTAppDependencies

- (id)initWithWindow:(UIWindow *)window {
    if ((self = [super init])) {
        [self configureDependencies:window];
    }

    return self;
}

- (void)configureDependencies:(UIWindow *)window {
    // -----
    // root classes
    RootWireframe *rootWireframe = [[RootWireframe alloc] initWithWindow:window];

    // *** add datastore

    // *** module initialization

}

- (void)installRootViewController {
    // *** present first wireframe here

}


@end