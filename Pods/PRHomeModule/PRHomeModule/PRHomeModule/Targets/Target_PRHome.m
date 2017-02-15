//
//  Target_PRHome.m
//  PRHomeModule
//
//  Created by baijf on 15/02/2017.
//  Copyright © 2017 Junne. All rights reserved.
//

#import "Target_PRHome.h"
#import "PRHomeViewController.h"

@implementation Target_PRHome

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    PRHomeViewController *viewController = [[PRHomeViewController alloc] init];
    return viewController;
}

@end
