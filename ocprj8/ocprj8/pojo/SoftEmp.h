//
//  SoftEmp.h
//  ocprj8
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

@interface SoftEmp : Employee

//软件工程师技能
@property(nonatomic,weak) NSString *tech;

- (void) coding;

@end
