//
//  TwoViewController.m
//  多视图之Modal(模态控制器)
//
//  Created by jacky zzxb on 17/8/24.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/**
 * 传值必须要在页面显示完成后才能获得
 */
- (void)viewDidAppear:(BOOL)animated{
    self.labelText.text = _param;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backOnClick:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
