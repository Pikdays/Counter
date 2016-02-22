//
// Created by chengxin on 16/2/22.
// Copyright (c) 2016 Mutual Mobile. All rights reserved.
//

#import "NSNumberFormatter+CNT.h"


@implementation NSNumberFormatter (CNT)

+ (NSNumberFormatter *)countFormatter {
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    numberFormatter.numberStyle = NSNumberFormatterSpellOutStyle;

    return numberFormatter;
}

+ (NSString *)formattedCount:(NSUInteger)count {
    return [[NSNumberFormatter countFormatter] stringFromNumber:@(count)];
}

@end