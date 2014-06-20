//
//  DNStratumWireframe.h
//  Dune
//
//  Created by Colin McArdell on 6/19/14.
//  Copyright (c) 2014 Colin Patrick McArdell. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DNStratumViewController;
@class DNRootWireframe;

@interface DNStratumWireframe : NSObject

@property (strong, nonatomic) DNRootWireframe *rootWireframe;

- (void)presentStratumInterfaceFromWindow:(UIWindow *)window;

@end
