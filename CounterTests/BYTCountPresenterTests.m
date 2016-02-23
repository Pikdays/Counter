//
//  Counter - CACountPresenterTests.m
//  Copyright 2013 Mutual Mobile. All rights reserved.
//
//  Created by: Jeff Gilbert
//

// Class under test
#import "BYTCountInteractor.h"

// Collaborators
#import "BYTCountViewProtocol.h"
#import "BYTCountInteractorIO.h"

// Test support
#import <XCTest/XCTest.h>

#define MOCKITO_SHORTHAND

#import "OCMockito.h"


@interface BYTCountPresenterTests : XCTestCase
@property(nonatomic, strong) BYTCountInteractor *presenter;
@property(nonatomic, strong) id <BYTCountViewProtocol> view;
@property(nonatomic, strong) id <BYTCountInteractorInput> interactor;
@end


@implementation BYTCountPresenterTests

- (void)setUp {
    [super setUp];

    self.presenter = [[BYTCountInteractor alloc] init];

    self.view = mockProtocol(@protocol(BYTCountViewProtocol));
    self.presenter.output = self.view;

    self.interactor = mockProtocol(@protocol(CNTCountInteractorInput));
    self.presenter.interactor = self.interactor;
}


- (void)testUpdateViewRequestsInteractorCount {
    [self.presenter updateView];

    [verify(self.interactor) requestCount];
}


- (void)testIncrementRequestsInteractorIncrement {
    [self.presenter increment];

    [verify(self.interactor) increment];
}


- (void)testDecrementRequestsInteractorDecrement {
    [self.presenter decrement];

    [verify(self.interactor) decrement];
}


- (void)testReceivingZeroDisplaysZero {
    [self.presenter updateCount:0];

    [verify(self.view) setCountText:@"zero"];
}


- (void)testReceivingOneDisplaysOne {
    [self.presenter updateCount:1];

    [verify(self.view) setCountText:@"one"];
}


- (void)testReceivingZeroDisablesDecrement {
    [self.presenter updateCount:0];

    [verify(self.view) setDecrementEnabled:NO];
}


- (void)testReceivingOneEnablesDecrement {
    [self.presenter updateCount:1];

    [verify(self.view) setDecrementEnabled:YES];
}

@end
