//
//  DNRootWireframe.m
//  Dune
//
//  Created by Colin McArdell on 6/19/14.
//  Copyright (c) 2014 Colin Patrick McArdell. All rights reserved.
//

#import "DNRootWireframe.h"

@implementation DNRootWireframe

- (void)showRootViewController:(UIViewController *)viewController
                      inWindow:(UIWindow *)window
{
    UINavigationController *navigationController = [self navigationControllerFromWindow:window];
    [navigationController setViewControllers:@[viewController]];
}

- (UINavigationController *)navigationControllerFromWindow:(UIWindow *)window
{
    return (UINavigationController *)[window rootViewController];
}

@end
