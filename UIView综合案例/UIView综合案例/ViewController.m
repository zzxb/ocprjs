//
//  ViewController.m
//  UIView综合案例
//
//  Created by jacky zheng on 2017/4/5.
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


- (IBAction)onClickUp:(id)sender {
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:3.0];
    
    CGRect myFrame = self.myImageBtn.frame;
    myFrame.origin.y -= 60;
    self.myImageBtn.frame = myFrame;
    
    [UIView commitAnimations];
}
@end
