//
//  TwoViewController.h
//  多视图之Modal(模态控制器)
//
//  Created by jacky zzxb on 17/8/24.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TwoViewController : UIViewController

@property(nonatomic,copy) NSString *param;
@property (weak, nonatomic) IBOutlet UILabel *labelText;
- (IBAction)backOnClick:(id)sender;

@end
