//
//  Employee.m
//  ocprj8
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize empcode = _empcode;
@synthesize empName = _empName;

- (id)initWithEmpCode:(NSString *)empCode andEmpName:(NSString *)empName{
    if(self = [super init]){
        _empcode = empCode;
        _empName = empName;
    }
    return self;
}

- (void)work{
    NSLog(@"员工都需要工作!");
}

- (void)daka{
    NSLog(@"是员工都需要上班打卡！");
}

@end
