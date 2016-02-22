//
//  CNTCountViewController.h
//  Counter
//
//  Created by Jeff Gilbert on 8/23/13.
//  Copyright (c) 2013 Mutual Mobile. All rights reserved.
//

/// 权 ViewController = View Protocol  +  Presenter

#import <UIKit/UIKit.h>
#import "CNTCountView.h"

@class CNTViewModel;


@interface CNTCountViewController : UIViewController <CNTCountView>

@property(nonatomic, weak) IBOutlet    UILabel *countLabel;
@property(nonatomic, weak) IBOutlet    UIButton *decrementButton;
@property(nonatomic, weak) IBOutlet    UIButton *incrementButton;

@property(nonatomic, strong) CNTViewModel *viewModel; // 展示器

@end
