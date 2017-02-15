//
//  MainViewController.m
//  PicRecord
//
//  Created by baijf on 15/02/2017.
//  Copyright © 2017 Junne. All rights reserved.
//

#import "MainViewController.h"
#import <PRHomeModule_Category/CTMediator+PRHomeModule.h>

@interface MainViewController ()

@property(nonatomic, strong) UIViewController *homeViewController;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTabBarViewControllers];
    // Do any additional setup after loading the view.
}

#pragma mark - set up Tabbar

- (void)setupTabBarViewControllers
{
    self.homeViewController = [[CTMediator sharedInstance] PRHomeModule_homeViewController];
    self.viewControllers = @[self.homeViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
