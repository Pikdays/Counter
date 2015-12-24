//
//  CNTCountInteractor.h
//  Counter
//
//  Created by Jeff Gilbert on 8/22/13.
//  Copyright (c) 2013 Mutual Mobile. All rights reserved.
//


/// 权 interactor = input protocol + output<protocol> object


#import <Foundation/Foundation.h>
#import "CNTCountInteractorIO.h"

@interface CNTCountInteractor : NSObject <CNTCountInteractorInput>
@property(nonatomic, weak) id <CNTCountInteractorOutput> output;
@end
