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

@protocol CNTCountPresenterProtocol;


@interface CNTCountViewController : UIViewController <CNTCountViewProtocol>

@property(nonatomic, strong) id <CNTCountPresenterProtocol> presenter;

+ (instancetype)instantiateViewControllerFromNib;

@end
