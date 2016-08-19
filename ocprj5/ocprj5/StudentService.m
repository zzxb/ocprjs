//
//  StudentService.m
//  ocprj5
//
//  Created by zzxb on 16/8/17.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import "StudentService.h"

@implementation StudentService

- (BOOL)loginFromForStuName:(NSString *)stuName andStuPwd:(NSString *)stuPwd
{
    if([stuName isEqualToString:@"zzxb"] && [stuPwd isEqualToString:@"qaz123"])
    {
        return true;
    }
    return false;
}

@end
