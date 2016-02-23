//
// Created by chengxin on 16/2/23.
// Copyright (c) 2016 Mutual Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CNTCountPresenterProtocol <NSObject>

- (void)increment;

- (void)decrement;

- (void)updateView;

@end