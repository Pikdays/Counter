//
//  CNTViewModel.h
//  Counter
//
//  Created by Jeff Gilbert on 8/23/13.
//  Copyright (c) 2013 Mutual Mobile. All rights reserved.
//


/// 权 Presenter = View Protocol + Interactor Protocol


#import <Foundation/Foundation.h>
#import "CNTCountView.h"

@interface CNTViewModel : NSObject

@property(nonatomic, weak) id <CNTCountView> view;

- (void)updateView;

- (void)increment;

- (void)decrement;

@end
