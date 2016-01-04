//
//  CACountPresenter.m
//  Counter
//
//  Created by Jeff Gilbert on 8/23/13.
//  Copyright (c) 2013 Mutual Mobile. All rights reserved.
//

#import "CNTViewModel.h"


@interface CNTViewModel ()
@property(nonatomic, strong) NSNumberFormatter *countFormatter;
@property(nonatomic, assign) NSUInteger count;

@end

@implementation CNTViewModel

- (void)updateView {
    [self sendCount];
}

- (void)increment {
    ++self.count;
    [self sendCount];
}

- (void)decrement {
    if (self.count > 0) {
        --self.count;
        [self sendCount];
    }
}

- (void)sendCount {
    [self.view setCountText:[self.countFormatter stringFromNumber:@(self.count)]];
    [self.view setDecrementEnabled:self.count>0];
}

- (NSNumberFormatter *)countFormatter {
    if (_countFormatter == nil) {
        _countFormatter = [[NSNumberFormatter alloc] init];
        [_countFormatter setNumberStyle:NSNumberFormatterSpellOutStyle];
    }

    return _countFormatter;
}

@end
