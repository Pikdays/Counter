//
//  BYTCountViewController.m
//  Counter
//
//  Created by Jeff Gilbert on 8/23/13.
//  Copyright (c) 2013 Mutual Mobile. All rights reserved.
//

#import "BYTCountViewController.h"
#import "BYTCountPresenterProtocol.h"

@interface BYTCountViewController ()
@property(nonatomic, weak) IBOutlet UILabel *countLabel;
@property(nonatomic, weak) IBOutlet UIButton *incrementButton;
@property(nonatomic, weak) IBOutlet UIButton *decrementButton;
@end

@implementation BYTCountViewController

#pragma mark - ⊂((・猿・))⊃ LifeCycle

+ (instancetype)instantiateViewControllerFromNib {
    return [[BYTCountViewController alloc] initWithNibName:@"BYTCountViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.countLabel.text = nil;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    [self.presenter updateView];
}

#pragma mark - ⊂((・猿・))⊃ Actions

- (IBAction)increment:(id)sender {
    [self.presenter increment];
}

- (IBAction)decrement:(id)sender {
    [self.presenter decrement];
}

#pragma mark - ⊂((・猿・))⊃ Delegate
#pragma mark - Protocol CNTCountView

- (void)setCountText:(NSString *)countText {
    self.countLabel.text = countText;
}

- (void)setDecrementEnabled:(BOOL)enabled {
    self.decrementButton.enabled = enabled;
}

@end