//
//  main.m
//  ocprj9
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Employee+EmployeeCatagory.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Employee *emp = [[Employee alloc]init];
        [emp work];
        [emp daka];
    }
    return 0;
}
