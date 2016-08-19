//
//  main.m
//  ocprj5
//
//  Created by zzxb on 16/8/17.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Teacher.h"
#import "StudentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /**
         * 关于类相关的基本案例
         * 1.基本类创建 see @Teacher
         * 2.类属性相关 see @Student
         * 3.构造函数 see @Student
         * 4.自定义方法 see @StudentService
         * 5.静态方法 see @Student
         */
        //Student *stu = [[Student alloc] init];
        Student *stu = [Student instance];
        stu.stuID = 1;
        stu.stuName = @"zhengbo";
        NSString *str = [[NSString stringWithFormat:@"%d",stu.stuID]stringByAppendingString:stu.stuName];
        NSLog(@"字符串:%@",stu.stuName);
        NSLog(@"%@",str);
        StudentService *myService = [[StudentService alloc] init];
        BOOL isLogin = [myService loginFromForStuName:@"zzxb" andStuPwd:@"qaz123"];
        if(isLogin)
        {
            NSLog(@"登录成功！");
        }
        else
        {
            NSLog(@"登录失败！");
        }
        Teacher *teacher = [[Teacher alloc] init];
        //[teacher test];//在.m文件中声明的方法无法调用。
    }
    return 0;
}
