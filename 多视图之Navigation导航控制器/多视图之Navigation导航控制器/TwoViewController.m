//
//  TwoViewController.m
//  多视图之Navigation导航控制器
//
//  Created by jacky zzxb on 17/8/23.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "TwoViewController.h"
#import "ThreeViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"two";
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)nextOnClick:(id)sender {
    ThreeViewController *three = [[ThreeViewController alloc] init];
    [self.navigationController pushViewController:three animated:YES];
}
@end
