//
//  PdController.m
//  Dune
//
//  Created by Colin McArdell on 6/12/14.
//  Copyright (c) 2014 Colin Patrick McArdell. All rights reserved.
//

#import "PdController.h"

#import <libpd/PdBase.h>
#import <libpd/PdAudioController.h>
#import <libpd/PdDispatcher.h>

static NSString * const kPatchFileName = @"_patch.pd";

@interface PdController ()

@property (strong, nonatomic) PdAudioController *audioController;
@property (strong, nonatomic) PdDispatcher *dispatcher;

@end

@implementation PdController

- (instancetype)init
{
    self = [super init];
    if (!self) return nil;
    
    _dispatcher = [[PdDispatcher alloc] init];
    [PdBase setDelegate:_dispatcher];
    
    _audioController = ({
        PdAudioController *audioController = [[PdAudioController alloc] init];
        [audioController configureAmbientWithSampleRate:44100 numberChannels:2 mixingEnabled:YES];
#ifdef DEBUG
        [audioController print];
#endif
        [audioController setActive:YES];
        
        audioController;
    });
    
    [PdBase openFile:kPatchFileName path:[[NSBundle mainBundle] bundlePath]];
    
    return self;
}

@end
