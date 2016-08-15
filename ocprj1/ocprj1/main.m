//
//  main.m
//  ocprj1
//
//  Created by zzxb on 16/8/15.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /**
         * 这个案例是关于基础知识的案例之基本数据类型使用以及输入输出
         * 1.main函数是入口整个工程的入口函数，一个工程有且仅有一个main函数。这点与java不同
         * 2.NSLog相当于System.out.println
         * 3.每一个字符串都是以'@'开头，切记!
         * 4.占位符的使用
         * 5.oc中的输入用scanf，与c语言的一直，但是，仅能输入int,float,char,BOOL等类型，不能够输入NSString类型.
         */
        NSLog(@"这是第一个语句！它是换行的！");
        int num = 10;
        float pi = 3.14f;
        BOOL flag = true;
        char myChar = 'd';
        NSLog(@"整数的占位符为i:%i",num);//10
        //可以用%.xf控制浮点类型小数点位数，x为控制的个数
        NSLog(@"浮点类型的占位符为f:%.2f",pi);//3.14
        NSLog(@"布尔类型的占位符为d:%d",flag);//值为：1
        NSLog(@"字符类型的占位符为c:%c",myChar);
        NSLog(@"请输入整型的数字:");
        int myNum = 0;
        scanf("%i",&myNum);
        NSLog(@"获得输入的数字:%i",myNum);
    }
    return 0;
}
