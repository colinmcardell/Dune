//
//  DNStratumViewController.h
//  Dune
//
//  Created by Colin McArdell on 6/19/14.
//  Copyright (c) 2014 Colin Patrick McArdell. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DNStratumModuleInterface.h"

@interface DNStratumViewController : UIViewController

@property (strong, nonatomic) id<DNStratumModuleInterface> eventHandler;

@end
