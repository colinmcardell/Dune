//
//  UIStoryboard+Idiom.h
//  Dune
//
//  Created by Colin McArdell on 6/19/14.
//  Copyright (c) 2014 Colin Patrick McArdell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIStoryboard (Idiom)

+ (UIStoryboard *)deviceStoryboardWithName:(NSString *)name
                                    bundle:(NSBundle *)storyboardBundleOrNil;

@end
