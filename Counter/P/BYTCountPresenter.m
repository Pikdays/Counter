//
// Created by Pikdays on 16/2/22.
// Copyright (c) 2016 Mutual Mobile. All rights reserved.
//

#import "BYTCountPresenter.h"
#import "BYTCountViewProtocol.h"
#import "PJCategoriesHeader.h"

@interface BYTCountPresenter ()

@end

@implementation BYTCountPresenter

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

#pragma mark - ⊂((・猿・))⊃ Delegate2
#pragma mark - CNTCountInteractorOutputProtocol

- (void)outputCount:(NSUInteger)count {
    [self.view setCountText:[NSNumberFormatter formattedCount:count]];
    [self.view setDecrementEnabled:[self canDecrementCount:count]];
}

@end