//
//  OneViewController.m
//  多视图之Modal(模态控制器)
//
//  Created by jacky zzxb on 17/8/24.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "OneViewController.h"
#import "TwoViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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

- (IBAction)onClick:(id)sender {
    TwoViewController *two = [[TwoViewController alloc] init];
    two.view.backgroundColor = [UIColor yellowColor];
    [two setParam:@"传递参数"];
    [self presentViewController:two animated:YES completion:nil];
    //[self presentViewController:two animated:YES completion:nil];
}
@end
