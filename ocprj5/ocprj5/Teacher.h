//
//  Teacher.h
//  ocprj5
//
//  Created by zzxb on 16/8/17.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * 在.h文件中声明的变量基本上都是公有变量，也可以用@private声明为私有变量。
 * 但苹果的代码规范中很少使用@private声明.
 * 由于Objective-C的动态消息传递机制，OC中不存在真正意义上的私有方法
 * 如果你不在.h文件中声明，只在.m文件中实现，或在.m文件的Class Extension里声明，
 * 那么基本上和私有方法差不多。
 * 简而言之，将你希望公有的放到.h文件，私有的放到.m文件。在import时只import .h文件
 */

@interface Teacher : NSObject
{
    int tid;
    NSString *tName;
}

/**
 * 方法的定义：
 *
 */

- (void) setTid: (int)tid;
- (void) setTName: (NSString *)tName;
- (int) getTid;
- (NSString *) getTName;

@end
