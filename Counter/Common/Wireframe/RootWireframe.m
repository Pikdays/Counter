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

- (void)showRootViewController:(UIViewController *)viewController inWindow:(UIWindow *)window {
    UINavigationController *navigationController = (UINavigationController *) [window rootViewController];
    navigationController.viewControllers = @[viewController];
}

//- (instancetype)initWithWindow:(UIWindow *)window {
//    if ((self = [super init])) {
//        [self configureDependencies:window];
//    }
//
//    return self;
//}

//- (void)configureDependencies:(UIWindow *)window {
//    CNTCountViewController *countViewController = [[CNTCountViewController alloc] initWithNibName:@"CNTCountViewController" bundle:nil];
//    CNTCountPresenter *countPresenter = [[CNTCountPresenter alloc] init];
//    CNTCountInteractor *countInteractor = [[CNTCountInteractor alloc] init];
//
//    /********** Root **********/
//    window.rootViewController = countViewController;
//
//    /********** V **********/
//    countViewController.countPresenter = countPresenter;
//
//    /********** P **********/
//    countPresenter.view = countViewController;
//    countPresenter.input = countInteractor;
//
//    /********** I **********/
//    countInteractor.output = countPresenter;
//}

@end
