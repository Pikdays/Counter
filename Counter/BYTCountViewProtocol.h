//
//  BYTCountViewProtocol.h
//  Counter
//
//  Created by Pikdays on 8/23/13.
//  Copyright (c) 2016 Mutual Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol BYTCountViewProtocol <NSObject>

- (void)setCountText:(NSString *)countText; // output 显示
- (void)setDecrementEnabled:(BOOL)enabled; // btn 事件 仍可属于显示

@end
