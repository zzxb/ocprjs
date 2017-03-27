//
//  ViewController.h
//  显示问题与答案案例
//
//  Created by jacky zheng on 2017/3/13.
//  Copyright © 2017年 jacky zheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *tiShiLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalFenLabel;
@property (weak, nonatomic) IBOutlet UITextField *answerText;
@property (weak, nonatomic) IBOutlet UISwitch *isTishi;
- (IBAction)onClickDisplayQuestion:(UIButton *)sender;
- (IBAction)onClickSubmitAnwer:(UIButton *)sender;
- (IBAction)switchChange:(UISwitch *)sender;

@end

