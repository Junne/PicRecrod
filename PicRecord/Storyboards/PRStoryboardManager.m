//
//  PRStoryboardManager.m
//  PicRecord
//
//  Created by baijf on 20/02/2017.
//  Copyright © 2017 Junne. All rights reserved.
//

#import "PRStoryboardManager.h"

NSString *uStoryboardNameHome = @"Home";

@implementation PRStoryboardManager

+ (id)viewControllerWithIdentifier:(NSString *)identifier
{
    if (!identifier) {
        return nil;
    }
    
    if ([identifier isEqualToString:uStoryboardNameHome]) {
        return [self viewControllerWithIdentifier:uStoryboardNameHome inStoryboard:uStoryboardNameHome];
    }
    
    return nil;
}

+ (id)viewControllerWithIdentifier:(NSString *)identifier inStoryboard:(NSString *)storyboardName
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    if (storyboard) {
        return [storyboard instantiateViewControllerWithIdentifier:identifier];
    }
    return nil;
}

@end
