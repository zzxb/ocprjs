//
//  ViewController.m
//  显示问题与答案案例
//
//  Created by jacky zheng on 2017/3/13.
//  Copyright © 2017年 jacky zheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableDictionary *data;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    data = [[NSMutableDictionary alloc] init];
//    [data setObject:@"3" forKey:@"1+2=?"];
//    [data setObject:@"zzxb" forKey:@"who are you ?"];
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"tiku" ofType:@"plist"];
    data = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    self.tiShiLabel.hidden = YES;
}

- (IBAction)onClickDisplayQuestion:(UIButton *)sender {
    NSUInteger count = [data count];
    int random = (arc4random() % count);
    NSArray *keys = [data allKeys];
    self.questionLabel.text = keys[random];
    self.isTishi.on = NO;
}

- (void)onClickSubmitAnwer:(UIButton *)sender{
    NSArray *values = [data valueForKey:self.questionLabel.text];
    if([values[0] isEqualToString:self.answerText.text]){
        //回答正确
        int currentFen = [self.totalFenLabel.text intValue];
        if(self.isTishi.on){//判断是否使用提示
            currentFen = currentFen + [values[3] intValue];
        }else{
            currentFen = currentFen + [values[2] intValue];
        }
        self.totalFenLabel.text = [NSString stringWithFormat:@"%i",currentFen];
    }else{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"警告" message:@"对不起,回答错误！" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:okAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
    NSUInteger count = [data count];
    int random = (arc4random() % count);
    NSArray *keys = [data allKeys];
    self.questionLabel.text = keys[random];
    self.isTishi.on = NO;
    self.tiShiLabel.hidden = YES;
    self.answerText.text = @"";
    
}

//- (IBAction)onClickDisplayAnwer:(UIButton *)sender {
//    if([self.questionLabel.text isEqualToString:@"问题?"]){
//        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"警告" message:@"对不起，请先选择问题！" preferredStyle:UIAlertControllerStyleAlert];
//        //UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
//        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
//        //[alertController addAction:cancelAction];
//        [alertController addAction:okAction];
//        [self presentViewController:alertController animated:YES completion:nil];
//        return;
//    }
//    self.anwerLabel.text = [data valueForKey:self.questionLabel.text];
//}
- (IBAction)switchChange:(UISwitch *)sender {
    if(sender.on){
        self.tiShiLabel.hidden = NO;
        [sender setEnabled:NO];
        NSArray *values = [data valueForKey:self.questionLabel.text];
        self.tiShiLabel.text = values[1];
    }
    
}
@end
