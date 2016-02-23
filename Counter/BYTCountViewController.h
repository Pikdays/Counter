//
//  BYTCountViewController.h
//  Counter
//
//  Created by Jeff Gilbert on 8/23/13.
//  Copyright (c) 2013 Mutual Mobile. All rights reserved.
//

/// 权 ViewController = View Protocol  +  Presenter

#import <UIKit/UIKit.h>
#import "BYTCountViewProtocol.h"

@protocol BYTCountPresenterProtocol;


@interface BYTCountViewController : UIViewController <BYTCountViewProtocol>

@property(nonatomic, strong) id <BYTCountPresenterProtocol> presenter;

+ (instancetype)instantiateViewControllerFromNib;

@end
