//
//  Student.m
//  ocprj14
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import "Student.h"

@implementation Student

@synthesize stuid = _stuid;
@synthesize stuName = _stuName;
@synthesize stuPwd = _stuPwd;

- (void)setStuPwd:(NSString *)newStuPwd{
    if([newStuPwd length] < 6){
        NSLog(@"对不起，您的密码有安全隐患！");
    }
    _stuPwd = newStuPwd;
}

@end
