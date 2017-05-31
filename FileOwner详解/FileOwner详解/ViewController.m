//
//  ViewController.m
//  FileOwner详解
//
//  Created by jacky zzxb on 17/5/27.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController (){
    Person *man;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    man = [[Person alloc] init];
    man.sex = @"男人";
    UIView *view = [[NSBundle mainBundle] loadNibNamed:@"myview" owner:man options:nil][0];
    [self.view addSubview:view];
}



@end
