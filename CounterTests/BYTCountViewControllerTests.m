////
////  Counter - CACountViewControllerTests.m
////  Copyright 2016 Mutual Mobile. All rights reserved.
////
////  Created by: Pikdays
////
//
//#import <XCTest/XCTest.h>
//
//#import "BYTCountViewController.h"
//#import "BYTCountPresenter.h"
//
//#define HC_SHORTHAND
//
//#import "OCHamcrest.h"
//
//#define MOCKITO_SHORTHAND
//
//#import "OCMockito.h"
//
//
//#define assertCountTextEquals(expected) assertThat(self.view.countLabel.text, equalTo(expected))
//#define assertDecrementButtonEnabledEquals(expected) assertThatBool(self.view.decrementButton.enabled, equalToBool(expected))
//
//
//@interface BYTCountViewControllerTests : XCTestCase
//@property(nonatomic, strong) BYTCountViewController *view;
//@property(nonatomic, strong) BYTCountPresenter *presenter;
//@end
//
//
//@implementation BYTCountViewControllerTests
//
//- (void)setUp {
//    [super setUp];
//
//    self.view = [[BYTCountViewController alloc] init];
//
//    self.presenter = mock([BYTCountPresenter class]);
//    self.view.presenter = self.presenter;
//}
//
//
//- (void)testInitialState {
//    assertThat(self.view.countLabel.text, nilValue());
//    assertThatBool(self.view.decrementButton.enabled, equalToBool(YES));
//}
//
//
//- (void)testSetCountTextToZero {
//    [self.view setCountText:@"zero"];
//
//    assertCountTextEquals(@"zero");
//}
//
//
//- (void)testSetCountTextToOne {
//    [self.view setCountText:@"one"];
//
//    assertCountTextEquals(@"one");
//}
//
//
//- (void)testDisableDecrement {
//    [self.view setDecrementEnabled:NO];
//
//    assertDecrementButtonEnabledEquals(NO);
//}
//
//
//- (void)testEnableDecrement {
//    [self setDecrementButtonEnabled:NO];
//
//    [self.view setDecrementEnabled:YES];
//
//    assertDecrementButtonEnabledEquals(YES);
//}
//
//
//- (void)testViewAppearingRequestsViewUpdate {
//    [self.view viewWillAppear:YES];
//
//    [verify(self.presenter) updateView];
//}
//
//
//- (void)testIncrementButtonRequestsIncrement {
//    [self tapButton:self.view.incrementButton];
//
//    [verify(self.presenter) increment];
//}
//
//
//- (void)testDecrementButtonRequestsDecrement {
//    [self tapButton:self.view.decrementButton];
//
//    [verify(self.presenter) decrement];
//}
//
//
//#pragma mark -
//
//- (void)setDecrementButtonEnabled:(BOOL)enabled {
//    self.view.decrementButton.enabled = enabled;
//}
//
//
//- (void)tapButton:(UIButton *)button {
//    [button sendActionsForControlEvents:UIControlEventTouchUpInside];
//}
//
//@end
