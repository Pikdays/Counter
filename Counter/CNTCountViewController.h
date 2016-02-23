//
//  CNTCountViewController.h
//  Counter
//
//  Created by Jeff Gilbert on 8/23/13.
//  Copyright (c) 2013 Mutual Mobile. All rights reserved.
//

/// 权 ViewController = View Protocol  +  Presenter

#import <UIKit/UIKit.h>
#import "CNTCountViewProtocol.h"

@class CNTCountInteractor;
@class CNTCountPresenter;


@interface CNTCountViewController : UIViewController <CNTCountViewProtocol>

@property(nonatomic, strong) CNTCountPresenter *countPresenter;

+ (instancetype)instantiateViewControllerFromNib;

@end
