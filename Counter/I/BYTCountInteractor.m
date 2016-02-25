//
//  CACountPresenter.m
//  Counter
//
//  Created by Pikdays on 8/23/13.
//  Copyright (c) 2016 Mutual Mobile. All rights reserved.
//

#import "BYTCountInteractor.h"


@interface BYTCountInteractor ()

@property(nonatomic, assign) NSUInteger count;

@end

@implementation BYTCountInteractor

#pragma mark - ⊂((・猿・))⊃ Set_Get

- (BOOL)canDecrement {
    return (self.count > 0);
}

#pragma mark - ⊂((・猿・))⊃ Delegate
#pragma mark - CNTCountInteractorInputProtocol

- (void)increment {
    ++self.count;

    [self outputCount];
}

- (void)decrement {
    if ([self canDecrement]) {
        --self.count;
        [self outputCount];
    }
}

#pragma mark - CNTCountInteractorOutputProtocol

- (void)outputCount {
    [self.output outputCount:self.count];
}

@end
