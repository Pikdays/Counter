//
// Created by chengxin on 16/2/22.
// Copyright (c) 2016 Mutual Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CNTCountInteractorIO.h"

@protocol CNTCountViewProtocol;


@interface CNTCountPresenter : NSObject <CNTCountInteractorOutputProtocol>

@property(nonatomic, weak) id <CNTCountViewProtocol> view;
@property(nonatomic, strong) id <CNTCountInteractorInputProtocol> input;

- (void)updateView;
- (void)increment;
- (void)decrement;

@end