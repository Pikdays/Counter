//
// Created by chengxin on 16/2/22.
// Copyright (c) 2016 Mutual Mobile. All rights reserved.
//

#import "CNTCountPresenter.h"
#import "CNTCountViewProtocol.h"
#import "PJCategoriesHeader.h"

@interface CNTCountPresenter ()

@end

@implementation CNTCountPresenter

#pragma mark - ⊂((・猿・))⊃ Set_Get

- (BOOL)canDecrementCount:(NSUInteger)count {
    return (count > 0);
}

#pragma mark - ⊂((・猿・))⊃ Action

- (void)increment {
    [self.input increment];
}

- (void)decrement {
    [self.input decrement];
}

- (void)updateView {
    [self.input requestCount];
}

#pragma mark - ⊂((・猿・))⊃ Delegate
#pragma mark - CNTCountInteractorOutputProtocol

- (void)outputCount:(NSUInteger)count {
    [self.view setCountText:[NSNumberFormatter formattedCount:count]];
    [self.view setDecrementEnabled:[self canDecrementCount:count]];
}

@end