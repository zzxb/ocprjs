//
//  main.m
//  ocprj2
//
//  Created by zzxb on 16/8/15.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /**
         * 这个案例是关于循环结构的案例集
         * 包括:for,while,do...while等循环
         */
        int i,sum=0;
        for (i = 0; i <= 100; i++) {
            sum = sum + i;
        }
        NSLog(@"利用for循环，从0-100整数相加和：%i",sum);//5050
        sum = 0;
        i = 0;
        while (i <= 100) {
            sum = sum + i;
        }
        NSLog(@"利用while循环，从0-100整数相加和：%i",sum);
        sum = 0;
        i = 0;
        do{
            sum = sum + i;
            i++;
        }while (i <= 100);
        NSLog(@"利用do...while循环，从0-100整数相加和：%i",sum);
    }
    return 0;
}
