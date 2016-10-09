//
//  main.m
//  ocprj10
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "pojo/SoftEmp.h"
#import "pojo/SalerEmp.h"
#import "pojo/Employee.h"
#import "pojo/CEO.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        SoftEmp *se = [[SoftEmp alloc]init];
        [se work];
        [se gongzi];
        [se coding];
        id<Employee> saler = [[SalerEmp alloc]init];
        [saler work];
        [saler gongzi];
        [saler daka];
        [(SalerEmp *)saler saling];
        
        CEO *ceo = [[CEO alloc]init];
        
        [ceo tinghuibao:se];
        
        [ceo tinghuibao:saler];
        
    }
    
    return 0;
}

