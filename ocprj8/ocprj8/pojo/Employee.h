//
//  Employee.h
//  ocprj8
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

@property(weak,nonatomic) NSString* empcode;
@property(weak,nonatomic) NSString* empName;

- (id)initWithEmpCode : (NSString*)empCode andEmpName : (NSString*)empName;

- (void) work;

- (void) daka;

@end