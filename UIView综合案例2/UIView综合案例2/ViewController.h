//
//  ViewController.h
//  UIView综合案例2
//
//  Created by jacky zheng on 2017/5/4.
//  Copyright © 2017年 jacky zheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)sliderValueChange:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UILabel *imageContent;
@property (weak, nonatomic) IBOutlet UILabel *imageNum;
@property (weak, nonatomic) IBOutlet UIImageView *images;
@property (weak, nonatomic) IBOutlet UIView *settingView;
- (IBAction)settingOnClick:(id)sender;
- (IBAction)nightMode:(UISwitch *)sender;
- (IBAction)imageScale:(UISlider *)sender;

@end

