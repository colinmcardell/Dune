//
//  UIStoryboard+Idiom.m
//  Dune
//
//  Created by Colin McArdell on 6/19/14.
//  Copyright (c) 2014 Colin Patrick McArdell. All rights reserved.
//

#import "UIStoryboard+Idiom.h"

@implementation UIStoryboard (Idiom)

+ (UIStoryboard *)deviceStoryboardWithName:(NSString *)name
                                    bundle:(NSBundle *)storyboardBundleOrNil
{
    NSString *deviceName;
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        deviceName = [name stringByAppendingString:@"_iPad"];
    }
    else {
        deviceName = [name stringByAppendingString:@"_iPhone"];
    }

    return [UIStoryboard storyboardWithName:deviceName bundle:storyboardBundleOrNil];
}

@end
