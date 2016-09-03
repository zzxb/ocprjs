//
//  Employee.m
//  ocprj14
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize empID = _empID;
@synthesize empName = _empName;
@synthesize empSex = _empSex;

- (NSString *)description{
    NSString *myValue = [NSString stringWithFormat:@"这是一个对象的所有属性:%i,%@,%@",_empID,_empName,_empSex];
    return myValue;
}

@end