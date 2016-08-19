//
//  StudentService.h
//  ocprj5
//
//  Created by zzxb on 16/8/17.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StudentService : NSObject

/**
 * 方法定义：
 * -/+: - 代表公有方法。+ 代表静态方法
 * (type):返回值类型，void/BOOL/int/....
 * 方法名：loginFormForStuName......andStuPwd
 * (NSString *) 参数类型,stuName变量名，用:分隔多个参数
 */

- (BOOL)loginFromForStuName:(NSString *) stuName
                  andStuPwd:(NSString *) stuPwd;

@end
