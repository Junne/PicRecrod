//
//  PRStoryboardManager.h
//  PicRecord
//
//  Created by baijf on 20/02/2017.
//  Copyright © 2017 Junne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


#pragma mark - Home

extern NSString *uStoryboardNameHome;

@interface PRStoryboardManager : NSObject

+ (id)viewControllerWithIdentifier:(NSString *)identifier;

@end
