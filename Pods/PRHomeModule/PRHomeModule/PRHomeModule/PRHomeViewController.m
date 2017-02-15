//
//  PRHomeViewController.m
//  PRHomeModule
//
//  Created by baijf on 14/02/2017.
//  Copyright © 2017 Junne. All rights reserved.
//

#import "PRHomeViewController.h"

@interface PRHomeViewController ()

@property(nonatomic, strong) UIButton *nameButton;
@end

@implementation PRHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 40)];
    [self.nameButton setTitle:@"Hi Junne" forState:UIControlStateNormal];
    [self.view addSubview:self.nameButton];
    // Do any additional setup after loading the view.
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
