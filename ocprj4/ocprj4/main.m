//
//  main.m
//  ocprj4
//
//  Created by zzxb on 16/8/16.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /**
         * 本案例是关于OC中指针(*)与引用(&)的案例。
         * 在内存中，任何一个变量都可以看成由三部分组成：变量名，值，以及存放该值的地址。
         * 指针变量的声明为 type *p 形式。
         * p的值就是内存地址。
         */
        //整型变量
        int var = 10;
        //指针变量
        int *myPoint;
        myPoint = &var;
        NSLog(@"var变量的地址为:%p",&var);
        NSLog(@"myPoint指针变量的值为:%p",myPoint);
        NSLog(@"*myPoint的值与var的值相同,%i",*myPoint);//10
        /**
         * 指针的指针变量
         */
        int **myPoint2;//指针的指针变量
        myPoint2 = &myPoint;
        NSLog(@"**myPoint2的值与var的值相同,%i",**myPoint2);//10
        
    }
    return 0;
}
