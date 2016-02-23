//
//  CACountPresenter.m
//  Counter
//
//  Created by Jeff Gilbert on 8/23/13.
//  Copyright (c) 2013 Mutual Mobile. All rights reserved.
//

#import "CNTCountInteractor.h"


@interface CNTCountInteractor ()

@property(nonatomic, assign) NSUInteger count;

@end

@implementation CNTCountInteractor

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

- (void)requestCount {
    [self outputCount];
}

#pragma mark - CNTCountInteractorOutputProtocol

- (void)outputCount {
    [self.output outputCount:self.count];
}

@end
