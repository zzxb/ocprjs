//
//  Employee.h
//  ocprj10
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//


#import <Foundation/Foundation.h>

@protocol Employee <NSObject>

@required

- (void) work;

- (void) gongzi;

@optional

- (void) daka;

@end