//
//  DNAppDelegate.m
//  Dune
//
//  Created by Colin McArdell on 6/12/14.
//  Copyright (c) 2014 Colin Patrick McArdell. All rights reserved.
//

#import "DNAppDelegate.h"

#import <CocoaLumberjack/DDTTYLogger.h>

@implementation DNAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [DDLog addLogger:[DDTTYLogger sharedInstance] withLogLevel:LOG_LEVEL_VERBOSE];
    
    return YES;
}

@end
