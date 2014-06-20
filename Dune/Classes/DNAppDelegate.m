//
//  DNAppDelegate.m
//  Dune
//
//  Created by Colin McArdell on 6/12/14.
//  Copyright (c) 2014 Colin Patrick McArdell. All rights reserved.
//

#import "DNAppDelegate.h"

#import "DNAppDependencies.h"

#import <CocoaLumberjack/DDTTYLogger.h>

@interface DNAppDelegate ()

@property (strong, nonatomic) DNAppDependencies *dependencies;

@end

@implementation DNAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [DDLog addLogger:[DDTTYLogger sharedInstance] withLogLevel:LOG_LEVEL_VERBOSE];
    
    [self setDependencies:[[DNAppDependencies alloc] init]];
    [self.dependencies installRootViewControllerIntoWindow:[self window]];
    
    return YES;
}

@end
