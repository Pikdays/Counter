//
//  OCHamcrest - HCSubstringMatcher.h
//  Copyright 2016 hamcrest.org. See LICENSE.txt
//
//  Created by: Jon Reid, http://qualitycoding.org/
//  Docs: http://hamcrest.github.com/OCHamcrest/
//  Source: https://github.com/hamcrest/OCHamcrest
//

#import <OCHamcrest/HCBaseMatcher.h>


@interface HCSubstringMatcher : HCBaseMatcher
{
    NSString *substring;
}

- (instancetype)initWithSubstring:(NSString *)aString;

@end
