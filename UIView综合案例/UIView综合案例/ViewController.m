//
//  ViewController.m
//  UIView综合案例
//
//  Created by jacky zheng on 17/4/11.
//  Copyright © 2017年 jacky zheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) onClick : (UIButton *)sender andBlock : (void(^)()) block{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    block();
    [UIView commitAnimations];
}

- (IBAction)onClickMoving:(UIButton *)sender {
    
    [self onClick:sender andBlock:^{
        CGRect myFrame = self.myImage.frame;
        switch (sender.tag) {
            case 1:
                myFrame.origin.y -= 10;
                break;
                
            case 2:
                myFrame.origin.y += 10;
                break;
                
            case 3:
                myFrame.origin.x -= 10;
                break;
            case 4:
                myFrame.origin.x += 10;
                break;
            default:
                break;
        }
        self.myImage.frame = myFrame;
    }];
    
}

- (IBAction)onClickBigOrSmall:(UIButton *)sender {
    
    [self onClick:sender andBlock:^{
        if(sender.tag == 5){
            self.myImage.transform = CGAffineTransformScale(self.myImage.transform, 1.2, 1.2);
        }else{
            if(sender.tag == 6){
                self.myImage.transform = CGAffineTransformScale(self.myImage.transform, 0.8, 0.8);
            }
        }
    }];
}

- (IBAction)onClickXuanZhuan:(UIButton *)sender {
    [self onClick:sender andBlock:^{
        if(sender.tag == 7){
            self.myImage.transform = CGAffineTransformRotate(self.myImage.transform, -M_PI_4);
        }else{
            if(sender.tag == 8){
                self.myImage.transform = CGAffineTransformRotate(self.myImage.transform, M_PI_4);
            }
        }
    }];
    
}

- (IBAction)onClickReset:(UIButton *)sender {
    [self onClick:sender andBlock:^{
        self.myImage.transform = CGAffineTransformIdentity;
    }];
}
@end
