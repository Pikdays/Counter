//
// Created by chengxin on 16/2/22.
// Copyright (c) 2016 Mutual Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RootWireframe;
@class CNTCountPresenter;


@interface CNTCountWireframe : NSObject

@property(nonatomic, strong) RootWireframe *rootWireframe;
@property (nonatomic, strong) CNTCountPresenter *countPresenter;

- (void)presentCountInterfaceFromWindow:(UIWindow *)window;


@end