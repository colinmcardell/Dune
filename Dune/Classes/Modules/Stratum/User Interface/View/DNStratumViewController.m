//
//  DNStratumViewController.m
//  Dune
//
//  Created by Colin McArdell on 6/19/14.
//  Copyright (c) 2014 Colin Patrick McArdell. All rights reserved.
//

#import "DNStratumViewController.h"

#import "PdController.h"

@interface DNStratumViewController ()

@property (strong, nonatomic) PdController *pdController;

@end

@implementation DNStratumViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self setPdController:[[PdController alloc] init]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
