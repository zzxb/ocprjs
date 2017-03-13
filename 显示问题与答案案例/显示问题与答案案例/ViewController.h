//
//  ViewController.h
//  显示问题与答案案例
//
//  Created by jacky zheng on 2017/3/13.
//  Copyright © 2017年 jacky zheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *anwerLabel;
- (IBAction)onClickDisplayQuestion:(UIButton *)sender;
- (IBAction)onClickDisplayAnwer:(UIButton *)sender;

@end

