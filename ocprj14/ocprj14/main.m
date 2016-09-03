//
//  main.m
//  ocprj14
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "pojo/Student.h"
#import "service/StudentService.h"
#import "pojo/Employee.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        //        Student *stu = [[Student alloc]init];
        //        stu.stuName = @"老韩";
        //        NSLog(@"名字:%@",[stu stuName]);
        //        [stu release];
        //        NSString *uname = @"xiaochen";
        //        NSString *upwd = @"qaz12";
        /////////////////以上的定义为初始值
        //StudentService *ss = [[StudentService alloc]init];
        //第一种
        //Student *mystu = [ss isLoginStuName:uname andStuPwd:upwd];
        //
        //if(mystu != nil){
        //    NSLog(@"登录成功，欢迎您：%@ 先生/女士",[mystu stuName]);
        //}else{
        //    NSLog(@"对不起，登录失败，请检查您的用户名！");
        //}
        
        //第二种（类似DAO设计模式的方式）
        
        //Student *mystu = [ss findByStuName:uname];
        //if(mystu != nil){//用户存在
        //    if([[mystu stuPwd] isEqualToString:upwd]){//登录成功
        //        NSLog(@"登录成功，欢饮您：%@ 先生/女士",[mystu stuName]);
        //    }else{//密码有误
        //        NSLog(@"对不起，密码有误！");
        //    }
        //}else{//用户不存在
        //    NSLog(@"对不起，该用户不存在！");
        //}
        //
        //
        //[ss release];
    }
    @autoreleasepool {
        Employee *emp = [[Employee alloc]init];
        
        
        emp.empID = 1001;
        emp.empName = @"老韩";
        emp.empSex = @"男";
        

    }
    return 0;
}