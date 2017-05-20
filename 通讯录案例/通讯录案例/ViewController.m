//
//  ViewController.m
//  通讯录案例
//
//  Created by jacky zheng on 2017/5/8.
//  Copyright © 2017年 jacky zheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    BOOL isFlag;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    isFlag = NO;
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)addLxr:(UIBarButtonItem *)sender {
    
    
    UIView *lastView;
    
    if(isFlag){
        lastView = [self.view.subviews lastObject];
    }else{
        lastView = [self.view.subviews firstObject];
        isFlag = YES;
    }

    CGFloat y = lastView.frame.origin.y + lastView.frame.size.height + 1;
    
    UIView *row = [self createView];
    [self.view addSubview:row];
    _removeBar.enabled = YES;
    
    row.frame = CGRectMake(375,y,375,50);
    row.alpha = 0;
    
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:1.0];
//    row.frame = CGRectMake(0,y, 375, 50);
//    row.alpha = 1;
//    [UIView commitAnimations];
    
    [UIView animateWithDuration:1.0 animations:^{
        row.frame = CGRectMake(0,y, 375, 50);
        row.alpha = 1;
    } completion:^(BOOL finished) {
        NSLog(@"完成!");
    }];
    
}

- (UIView *)createView{
    UIView *row = [[UIView alloc] init];
    row.backgroundColor = [UIColor redColor];
    
    UIButton *icon = [[UIButton alloc] init];
    
    [row addSubview:icon];
    
    
    return row;
}

- (IBAction)removeLxr:(UIBarButtonItem *)sender {
    UIView *lastView = [self.view.subviews lastObject];
    
    //[lastView removeFromSuperview];
    
    [UIView animateWithDuration:1.0 animations:^{
        CGRect temp = lastView.frame;
        temp.origin.x = 375;
        lastView.frame = temp;
        lastView.alpha = 0;
    } completion:^(BOOL finished) {
        [lastView removeFromSuperview];
        if(self.view.subviews.count == 3){
            _removeBar.enabled = NO;
        }
    }];
    
    
}
@end
