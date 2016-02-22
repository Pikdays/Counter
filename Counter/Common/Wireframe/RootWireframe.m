//
//  RootWireframe.m
//  VIPERDEMO
//
//  Created by Pikdays on 21/02/16.
//
//

#import "RootWireframe.h"
#import "CNTCountInteractor.h"
#import "CNTCountViewController.h"
#import "CNTCountPresenter.h"

@interface RootWireframe ()

@end

@implementation RootWireframe

- (instancetype)initWithWindow:(UIWindow *)window {
    if ((self = [super init])) {
        [self configureDependencies:window];
    }

    return self;
}

- (void)configureDependencies:(UIWindow *)window {
    CNTCountViewController *countViewController = [[CNTCountViewController alloc] initWithNibName:@"CNTCountViewController" bundle:nil];
    CNTCountPresenter *countPresenter = [[CNTCountPresenter alloc] init];
    CNTCountInteractor *countInteractor = [[CNTCountInteractor alloc] init];

    /********** Root **********/
    window.rootViewController = countViewController; // 权 设置代理

    /********** V **********/
    countViewController.countPresenter = countPresenter; // 权 设置代理 VC + 展示器

    /********** P **********/
    countPresenter.view = countViewController;
    countPresenter.input = countInteractor;

    /********** I **********/
    countInteractor.output = countPresenter; // 权 设置代理 xxx
}

@end
