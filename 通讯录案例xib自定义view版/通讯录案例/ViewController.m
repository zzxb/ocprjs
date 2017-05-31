//
//  ViewController.m
//  通讯录案例
//
//  Created by jacky zheng on 2017/5/8.
//  Copyright © 2017年 jacky zheng. All rights reserved.
//

#import "ViewController.h"
#import "Row.h"

@interface ViewController (){
    BOOL isFlag;
    NSArray *lxrNames;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    isFlag = NO;
    lxrNames = @[@"孙悟空",@"猪八戒",@"沙僧",@"白龙马",@"潘金莲",@"武大郎",@"烧饼",@"羊肉串",@"掌中宝",@"骨髓"];
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
    NSString *iconName = [NSString stringWithFormat:@"01%i.jpg",arc4random_uniform(9)];
    NSString *content = lxrNames[arc4random_uniform(lxrNames.count)];
    Row *row = [Row RowWithIcon:iconName andContent:content andOwner:self];
    return row;
}

- (void)onClickDelBtn : (UIButton *)sender{
    [UIView animateWithDuration:1.0 animations:^{
        CGRect temp = sender.superview.frame;
        temp.origin.x = 375;
        sender.superview.frame = temp;
        sender.superview.alpha = 0;
    } completion:^(BOOL finished) {
        int flag = [self.view.subviews indexOfObject:sender.superview];
        [sender.superview removeFromSuperview];
        for(int i = flag;i < self.view.subviews.count;i++){
            CGRect tempx = self.view.subviews[i].frame;
            tempx.origin.y = tempx.origin.y - 50 - 1;
            self.view.subviews[i].frame = tempx;
        }
    }];
    
}

- (void)onClickBtn : (UIButton *) sender{
    UIView *view =  [sender superview];
    UILabel *content = view.subviews[0];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:content.text preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:nil];
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
