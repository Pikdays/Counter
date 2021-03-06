//
// Created by Pikdays on 16/2/22.
// Copyright (c) 2016 Mutual Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol BYTCountInteractorInputProtocol <NSObject>

- (void)increment;

- (void)decrement;

@end



@protocol BYTCountInteractorOutputDelegate <NSObject>

- (void)outputCount:(NSUInteger)count;

@end
