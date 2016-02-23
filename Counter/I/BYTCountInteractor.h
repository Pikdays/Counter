//
//  BYTCountInteractor.h
//  Counter
//
//  Created by Jeff Gilbert on 8/23/13.
//  Copyright (c) 2013 Mutual Mobile. All rights reserved.
//


/// 权 Presenter = View Protocol + Interactor Protocol


#import <Foundation/Foundation.h>
#import "BYTCountInteractorIO.h"

@interface BYTCountInteractor : NSObject <BYTCountInteractorInputProtocol>

@property(nonatomic, weak) id <BYTCountInteractorOutputDelegate> output;

@end
