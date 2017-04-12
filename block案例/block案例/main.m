//
//  main.m
//  block案例
//
//  Created by jacky zheng on 17/4/12.
//  Copyright © 2017年 jacky zheng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //无返回值无参数
        void(^block)() = ^(){
            NSLog(@"block函数！");
        };
        block();
        //无返回有参数
        void(^block2)(int) = ^(int x){
            NSLog(@"ffff--%i",x);
        };
        block2(12);
        //有返回值无参数
        int(^block4)() = ^(){
            return 250;
        };
        //有返回值有参数
        NSLog(@"kkkkk----%i",block4());
        
        int(^block3)(int,int) = ^(int x,int y){
            return x + y;
        };
        
        NSLog(@"ggggg---%i",block3(12,13));
        
    }
    return 0;
}
