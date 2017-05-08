//
//  ViewController.m
//  UIView综合案例2
//
//  Created by jacky zheng on 2017/5/4.
//  Copyright © 2017年 jacky zheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSArray *data;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"imageinfo" ofType:@"plist"];
    data = [NSArray arrayWithContentsOfFile:path];
    _imageContent.text = [data[0] valueForKey:@"content"];
    _settingView.hidden = YES;
    
}


- (IBAction)sliderValueChange:(UISlider *)sender {
    NSString *imageName = [NSString stringWithFormat:@"%.f.jpeg",sender.value];
    _images.image = [UIImage imageNamed:imageName];
    _imageNum.text = [NSString stringWithFormat:@"%.f/7",sender.value];
    NSDictionary *temp = data[(int)sender.value - 1];
    _imageContent.text = [temp valueForKey:@"content"];
    
}
- (IBAction)settingOnClick:(id)sender {
    if(_settingView.isHidden){
        _settingView.hidden = NO;
    }else{
        _settingView.hidden = YES;
    }
}

- (IBAction)nightMode:(UISwitch *)sender {
    if(sender.on){
        [self.view setBackgroundColor:[UIColor darkGrayColor]];
    }else{
        [self.view setBackgroundColor:[UIColor whiteColor]];
    }
}

- (IBAction)imageScale:(UISlider *)sender {
    _images.transform = CGAffineTransformMakeScale(sender.value, sender.value);
}
@end
