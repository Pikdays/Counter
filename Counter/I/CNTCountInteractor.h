//
//  CNTCountInteractor.h
//  Counter
//
//  Created by Jeff Gilbert on 8/23/13.
//  Copyright (c) 2013 Mutual Mobile. All rights reserved.
//


/// 权 Presenter = View Protocol + Interactor Protocol


#import <Foundation/Foundation.h>
#import "CNTCountViewProtocol.h"
#import "CNTCountInteractorIO.h"

@interface CNTCountInteractor : NSObject <CNTCountInteractorInputProtocol>

@property(nonatomic, weak) id <CNTCountInteractorOutputDelegate> output;

@end
