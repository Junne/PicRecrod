//
//  CTMediator+PRHomeModule.m
//  PRHomeModule_Category
//
//  Created by baijf on 14/02/2017.
//  Copyright © 2017 Junne. All rights reserved.
//

#import "CTMediator+PRHomeModule.h"

@implementation CTMediator (PRHomeModule)

- (UIViewController *)PRHomeModule_homeViewController
{
    return [self performTarget:@"PRHome" action:@"viewController" params:nil shouldCacheTarget:NO];
}

@end
