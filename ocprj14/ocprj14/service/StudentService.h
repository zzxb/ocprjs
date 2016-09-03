//
//  StudentService.h
//  ocprj14
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Student;

@interface StudentService : NSObject

- (Student *)isLoginStuName : (NSString *)nStuName andStuPwd : (NSString *) nStuPwd;

- (Student *)findByStuName : (NSString *) nStuName;


@end
