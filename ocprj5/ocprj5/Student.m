//
//  Student.m
//  ocprj5
//
//  Created by zzxb on 16/8/17.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import "Student.h"

@implementation Student

//静态方法
+ (Student *)instance
{
    return [[Student alloc] init];
}

//自定义构造方法
- (id) initWithStuId:(int) stuId
          andStuName:(NSString *)stuName
{
    //调用父类构造方法
    self = [super init];
    if(self != nil)
    {
        _stuID = stuId;
        _stuName = stuName;
    }
    return self;
}
@end
