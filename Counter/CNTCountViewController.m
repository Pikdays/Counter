//
//  CNTCountViewController.m
//  Counter
//
//  Created by Jeff Gilbert on 8/23/13.
//  Copyright (c) 2013 Mutual Mobile. All rights reserved.
//

#import "CNTCountViewController.h"
#import "CNTCountInteractor.h"
#import "CNTCountPresenter.h"


@implementation CNTCountViewController

+ (instancetype)instantiateViewControllerFromNib {
    return [[CNTCountViewController alloc] initWithNibName:@"CNTCountViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.countLabel.text = nil;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    [self.countPresenter updateView];
}

#pragma mark - Protocol CNTCountView

- (void)setCountText:(NSString *)countText {
    self.countLabel.text = countText;
}

- (void)setDecrementEnabled:(BOOL)enabled {
    self.decrementButton.enabled = enabled;
}

#pragma mark - Actions

- (IBAction)increment:(id)sender {
    [self.countPresenter increment];
}

- (IBAction)decrement:(id)sender {
    [self.countPresenter decrement];
}

@end
