////
////  Counter - CACountPresenterTests.m
////  Copyright 2016 Mutual Mobile. All rights reserved.
////
////  Created by: Pikdays
////
//
//#import <XCTest/XCTest.h>
//
//#import "BYTCountPresenter.h"
//#import "BYTCountViewProtocol.h"
//
//#define MOCKITO_SHORTHAND
//
//#import "OCMockito.h"
//
//
//@interface BYTCountPresenterTests : XCTestCase
//@property(nonatomic, strong) BYTCountPresenter *presenter;
//@property(nonatomic, strong) id <BYTCountViewProtocol> view;
//@property(nonatomic, strong) id <BYTCountInteractorInputProtocol> input;
//@end
//
//
//@implementation BYTCountPresenterTests
//
//- (void)setUp {
//    [super setUp];
//
//    self.presenter = [[BYTCountPresenter alloc] init];
//
//    self.view = mockProtocol(@protocol(BYTCountViewProtocol));
//    self.presenter.view = self.view;
//
//    self.input = mockProtocol(@protocol(BYTCountInteractorInputProtocol));
//    self.presenter.input = self.input;
//}
//
//
//- (void)testUpdateViewRequestsInteractorCount {
//    [self.presenter updateView];
//
//    [verify(self.input) requestCount];
//}
//
//
//- (void)testIncrementRequestsInteractorIncrement {
//    [self.presenter increment];
//
//    [verify(self.input) increment];
//}
//
//
//- (void)testDecrementRequestsInteractorDecrement {
//    [self.presenter decrement];
//
//    [verify(self.input) decrement];
//}
//
//
//- (void)testReceivingZeroDisplaysZero {
//    [self.presenter outputCount:0];
//
//    [verify(self.view) setCountText:@"zero"];
//}
//
//
//- (void)testReceivingOneDisplaysOne {
//    [self.presenter outputCount:1];
//
//    [verify(self.view) setCountText:@"one"];
//}
//
//
//- (void)testReceivingZeroDisablesDecrement {
//    [self.presenter outputCount:0];
//
//    [verify(self.view) setDecrementEnabled:NO];
//}
//
//
//- (void)testReceivingOneEnablesDecrement {
//    [self.presenter outputCount:1];
//
//    [verify(self.view) setDecrementEnabled:YES];
//}
//
//@end
