//
//  DNAppDependencies.m
//  Dune
//
//  Created by Colin McArdell on 6/19/14.
//  Copyright (c) 2014 Colin Patrick McArdell. All rights reserved.
//

#import "DNAppDependencies.h"

#import "DNRootWireframe.h"

#import "DNStratumWireframe.h"

@interface DNAppDependencies ()

@property (strong, nonatomic) DNStratumWireframe *stratumWireframe;

@end

@implementation DNAppDependencies

- (instancetype)init
{
    self = [super init];
    if (!self) return nil;
    
    [self configureDependencies];
    
    return self;
}

#pragma mark - Config

- (void)configureDependencies
{
    DNRootWireframe *rootWireframe = [[DNRootWireframe alloc] init];
    
    self.stratumWireframe = ({
        DNStratumWireframe *wireframe = [[DNStratumWireframe alloc] init];
        [wireframe setRootWireframe:rootWireframe];
        wireframe;
    });
}

#pragma mark -

- (void)installRootViewControllerIntoWindow:(UIWindow *)window
{
    [self.stratumWireframe presentStratumInterfaceFromWindow:window];
}

@end
