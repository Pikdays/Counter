//
//  Counter - CACountPresenterTests.m
//  Copyright 2013 Mutual Mobile. All rights reserved.
//
//  Created by: Jeff Gilbert
//

// Class under test
#import "CNTCountInteractor.h"

// Collaborators
#import "CNTCountViewProtocol.h"
#import "CNTCountInteractorIO.h"

// Test support
#import <XCTest/XCTest.h>

#define MOCKITO_SHORTHAND
#import "OCMockito.h"


@interface CNTCountPresenterTests : XCTestCase
@property (nonatomic, strong)   CNTCountInteractor *          presenter;
@property (nonatomic, strong)   id<CNTCountViewProtocol>            view;
@property (nonatomic, strong)   id<CNTCountInteractorInput> interactor;
@end


@implementation CNTCountPresenterTests

- (void)setUp
{
    [super setUp];
    
    self.presenter = [[CNTCountInteractor alloc] init];
    
    self.view = mockProtocol(@protocol(CNTCountViewProtocol));
    self.presenter.output = self.view;
    
    self.interactor = mockProtocol(@protocol(CNTCountInteractorInput));
    self.presenter.interactor = self.interactor;
}


- (void)testUpdateViewRequestsInteractorCount
{
    [self.presenter updateView];
    
    [verify(self.interactor) requestCount];
}


- (void)testIncrementRequestsInteractorIncrement
{
	[self.presenter increment];
    
    [verify(self.interactor) increment];
}


- (void)testDecrementRequestsInteractorDecrement
{
	[self.presenter decrement];
    
    [verify(self.interactor) decrement];
}


- (void)testReceivingZeroDisplaysZero
{
    [self.presenter updateCount:0];
    
    [verify(self.view) setCountText:@"zero"];
}


- (void)testReceivingOneDisplaysOne
{
    [self.presenter updateCount:1];
    
    [verify(self.view) setCountText:@"one"];
}


- (void)testReceivingZeroDisablesDecrement
{
    [self.presenter updateCount:0];
    
    [verify(self.view) setDecrementEnabled:NO];
}


- (void)testReceivingOneEnablesDecrement
{
    [self.presenter updateCount:1];
    
    [verify(self.view) setDecrementEnabled:YES];
}

@end
