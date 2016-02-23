//
//  BYTCountViewController.h
//  Counter
//
//  Created by Pikdays on 8/23/13.
//  Copyright (c) 2016 Mutual Mobile. All rights reserved.
//

/// 权 ViewController = View Protocol  +  Presenter

#import <UIKit/UIKit.h>
#import "BYTCountViewProtocol.h"

@protocol BYTCountPresenterProtocol;


@interface BYTCountViewController : UIViewController <BYTCountViewProtocol>

@property(nonatomic, weak) IBOutlet UILabel *countLabel;
@property(nonatomic, weak) IBOutlet UIButton *incrementButton;
@property(nonatomic, weak) IBOutlet UIButton *decrementButton;

@property(nonatomic, strong) id <BYTCountPresenterProtocol> presenter;

+ (instancetype)instantiateViewControllerFromNib;

@end
