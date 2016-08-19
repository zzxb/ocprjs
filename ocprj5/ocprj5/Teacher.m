//
//  Teacher.m
//  ocprj5
//
//  Created by zzxb on 16/8/17.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

- (void) setTid:(int)parTid
{
    self.tid = parTid;
}

- (NSString *) getTName
{
    return tName;
}

- (int) getTid
{
    return tid;
}

- (void) setTName:(NSString *)parTName
{
    self.tName = parTName;
}

- (void)test
{
    NSLog(@"私有方法");
}


@end
