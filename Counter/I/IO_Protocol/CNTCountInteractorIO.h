//
// Created by chengxin on 16/2/22.
// Copyright (c) 2016 Mutual Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol CNTCountInteractorInputProtocol <NSObject>

- (void)requestCount;

- (void)increment;

- (void)decrement;

@end



@protocol CNTCountInteractorOutputProtocol <NSObject>

- (void)outputCount:(NSUInteger)count;

@end
