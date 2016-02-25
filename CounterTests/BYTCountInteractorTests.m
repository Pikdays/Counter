////
////  Counter - CACountInteractorTests.m
////  Copyright 2016 Mutual Mobile. All rights reserved.
////
////  Created by: Pikdays
////
//
//#import <XCTest/XCTest.h>
//
//#import "BYTCountInteractor.h"
//
//
//#define HC_SHORTHAND
//
//#import "OCHamcrest.h"
//
//
//#define assertCountEquals(expected) assertThatUnsignedInteger(self.count, equalToUnsignedInteger(expected))
//
//
//@interface BYTCountInteractorTests : XCTestCase <BYTCountInteractorOutputDelegate>
//@property(nonatomic, strong) id <BYTCountInteractorInputProtocol> input;
//@property(nonatomic, assign) NSUInteger count;
//@end
//
//@implementation BYTCountInteractorTests
//
//- (void)setUp {
//    [super setUp];
//
//    BYTCountInteractor *interactor = [[BYTCountInteractor alloc] init];
//    interactor.output = self;
//    self.input = interactor;
//}
//
//
//- (void)testInitialCountIsZero {
//    self.count = 1;
//
//    [self.input requestCount];
//
//    assertCountEquals(0);
//}
//
//
//- (void)testOneIncrementReturnsOne {
//    [self.input increment];
//
//    assertCountEquals(1);
//}
//
//
//- (void)testTwoIncrementsReturnsTwo {
//    [self.input increment];
//    [self.input increment];
//
//    assertCountEquals(2);
//}
//
//
//- (void)testDecrementFromZeroReturnsZero {
//    [self.input decrement];
//
//    assertCountEquals(0);
//}
//
//
//- (void)testOneDecrementFromOneReturnsZero {
//    [self.input increment];
//
//    [self.input decrement];
//
//    assertCountEquals(0);
//}
//
//
//- (void)testOneDecrementFromTwoReturnsOne {
//    [self.input increment];
//    [self.input increment];
//
//    [self.input decrement];
//
//    assertCountEquals(1);
//}
//
//#pragma mark - ⊂((・猿・))⊃ Delegate
//#pragma mark - BYTCountInteractorOutputDelegate
//
//- (void)outputCount:(NSUInteger)count {
//    self.count = count;
//}
//
//@end
