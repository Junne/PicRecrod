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
@property(nonatomic, strong) UIViewController *mapViewController;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTabBarViewControllers];
}

#pragma mark - set up Tabbar

- (void)setupTabBarViewControllers
{
    self.tabBar.barTintColor = [UIColor whiteColor];
    self.tabBar.backgroundColor = [UIColor whiteColor];
    self.tabBar.tintColor = [UIColor colorWithRed:0.95 green:0.64 blue:0.91 alpha:1.00];
    
    self.homeViewController = [[CTMediator sharedInstance] PRHomeModule_homeViewController];
    UINavigationController *homeNavigation = [[UINavigationController alloc] initWithRootViewController:self.homeViewController];
    homeNavigation.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"记录" image:[UIImage imageNamed:@"tabbar_home"] selectedImage:[UIImage imageNamed:@"tabbar_home_highlight"]];
    
    self.mapViewController = [[CTMediator sharedInstance] PRHomeModule_homeViewController];
    UINavigationController *mapNavigation = [[UINavigationController alloc] initWithRootViewController:self.mapViewController];
    mapNavigation.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"地图" image:[UIImage imageNamed:@"tabbar_map"] selectedImage:[UIImage imageNamed:@"tabbar_map_highlight"]];
    self.viewControllers = @[homeNavigation, mapNavigation];
    
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
