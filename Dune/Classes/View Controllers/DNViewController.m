//
//  DNViewController.m
//  Dune
//
//  Created by Colin McArdell on 6/12/14.
//  Copyright (c) 2014 Colin Patrick McArdell. All rights reserved.
//

#import "DNViewController.h"

#import "PdController.h"

@interface DNViewController ()

@property (strong, nonatomic) PdController *pdController;

@end

@implementation DNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setPdController:[[PdController alloc] init]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
