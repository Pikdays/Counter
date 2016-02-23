//
// Created by Pikdays on 16/2/22.
// Copyright (c) 2016 Mutual Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BYTCountInteractorIO.h"
#import "BYTCountPresenterProtocol.h"

@protocol BYTCountViewProtocol;


@interface BYTCountPresenter : NSObject <BYTCountPresenterProtocol, BYTCountInteractorOutputDelegate>

@property(nonatomic, weak) id <BYTCountViewProtocol> view;
@property(nonatomic, strong) id <BYTCountInteractorInputProtocol> input;

@end