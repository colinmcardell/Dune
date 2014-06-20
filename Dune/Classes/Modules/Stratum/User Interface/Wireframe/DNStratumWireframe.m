//
//  DNStratumWireframe.m
//  Dune
//
//  Created by Colin McArdell on 6/19/14.
//  Copyright (c) 2014 Colin Patrick McArdell. All rights reserved.
//

#import "DNStratumWireframe.h"

#import "DNStratumViewController.h"
#import "DNRootWireframe.h"

static NSString *StratumViewControllerIdentifier = @"DNStratumViewController";

@interface DNStratumWireframe ()

@property (strong, nonatomic) DNStratumViewController *stratumViewController;

@end

@implementation DNStratumWireframe

- (void)presentStratumInterfaceFromWindow:(UIWindow *)window
{
    DNStratumViewController *stratumViewController = [self stratumViewControllerFromStoryboard];
    [self setStratumViewController:stratumViewController];
    
    [self.rootWireframe showRootViewController:[self stratumViewController]
                                      inWindow:window];
}

- (DNStratumViewController *)stratumViewControllerFromStoryboard
{
    UIStoryboard *storyboard = [self mainStoryboard];
    DNStratumViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:StratumViewControllerIdentifier];
    return viewController;
}

- (UIStoryboard *)mainStoryboard
{
    UIStoryboard *storyboard = [UIStoryboard deviceStoryboardWithName:@"Main"
                                                               bundle:[NSBundle mainBundle]];
    return storyboard;
}

@end
