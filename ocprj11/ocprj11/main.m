//
//  main.m
//  ocprj11
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "pojo/Ployer.h"
#import "pojo/PlayerEmp.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Ployer *lanhan = [[Ployer alloc]init];
        PlayerEmp *delegate = [[PlayerEmp alloc]init];
        lanhan.playemp = delegate;
        [lanhan playgame];
    }
    return 0;
}