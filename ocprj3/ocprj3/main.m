//
//  main.m
//  ocprj3
//
//  Created by zzxb on 16/8/16.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    /**
     * 1.选择结构的案例集
     * 2.if,if...else,switch...case
     */
    @autoreleasepool {
        NSLog(@"请输入您的成绩");
        float score = 0;
        scanf("%f",&score);
        if(score >= 60){
            NSLog(@"恭喜你，成绩及格了!成绩为:%.2f",score);
        }else{
            NSLog(@"对不起，成绩不及格，继续努力！");
        }
        char sc = 'f';
        if(score >= 90){
            sc = 'a';
        }
        if(score >= 80 && score < 90){
            sc = 'b';
        }
        if(score >= 70 && score < 80){
            sc = 'c';
        }
        if(score >= 60 && score < 70){
            sc = 'd';
        }
        if(score >= 0 && score < 60){
            sc = 'e';
        }
        switch (sc) {
            case 'a':
                NSLog(@"您的成绩等级为:优秀");
                break;
            case 'b':
                NSLog(@"您的成绩等级为:良");
                break;
            case 'c':
                NSLog(@"您的成绩等级为:中");
                break;
            case 'd':
                NSLog(@"您的成绩等级为:及格");
                break;
            case 'e':
                NSLog(@"您的成绩等级为:不及格");
                break;
            default:
                NSLog(@"对不起，您缺考！");
        }
        
    }
    return 0;
}
