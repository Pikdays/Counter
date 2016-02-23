//
// Created by Pikdays on 16/2/22.
// Copyright (c) 2016 Mutual Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RootWireframe;
@class BYTCountPresenter;


@interface BYTCountWireframe : NSObject

@property(nonatomic, strong) RootWireframe *rootWireframe;
@property (nonatomic, strong) BYTCountPresenter *countPresenter;

- (void)presentCountInterfaceFromWindow:(UIWindow *)window;

@end