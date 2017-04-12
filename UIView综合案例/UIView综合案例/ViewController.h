//
//  ViewController.h
//  UIView综合案例
//
//  Created by jacky zheng on 17/4/11.
//  Copyright © 2017年 jacky zheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *myImage;

- (IBAction)onClickMoving:(UIButton *)sender;
- (IBAction)onClickBigOrSmall:(UIButton *)sender;
- (IBAction)onClickXuanZhuan:(UIButton *)sender;
- (IBAction)onClickReset:(UIButton *)sender;

@end

