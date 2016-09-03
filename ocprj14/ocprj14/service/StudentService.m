//
//  StudentService.m
//  ocprj14
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import "StudentService.h"
#import "../pojo/Student.h"

@implementation StudentService

- (Student *)isLoginStuName:(NSString *)nStuName andStuPwd:(NSString *)nStuPwd{
    if([nStuName isEqualToString:@"xiaochen"] && [nStuPwd isEqualToString:@"qaz123"]){
        Student *stu = [[Student alloc]init];
        stu.stuid = 1001;
        stu.stuName = @"xiaochen";
        stu.stuPwd = @"qaz123";
        return stu;
    }
    return nil;
}

- (Student *)findByStuName:(NSString *)nStuName{
    if([nStuName isEqualToString:@"xiaochen"]){
        Student *stu = [[Student alloc]init];
        stu.stuid = 1001;
        stu.stuName = @"xiaochen";
        stu.stuPwd = @"qaz123";
        return stu;
    }
    return nil;
}

@end