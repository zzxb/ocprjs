//
//  main.m
//  ocprj12
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "pojo/Player.h"
#import "pojo/PlayerEmp.h"
#import "pojo/PlayerDelegate.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Player *lanhan = [[Player alloc]init];
        id<PlayerDelegate> delegate = [[PlayerEmp alloc]init];
        lanhan.playemp = delegate;
        [lanhan playgame];
    }
    return 0;
}
