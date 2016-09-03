//
//  Animal.m
//  ocprj13
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import "Animal.h"

@implementation Animal

- (id)initWithAname:(NSString *)aname{
    if([super init]){
        _aname = aname;
        _health = 100;
    }
    return self;
}

- (id)initWithAname:(NSString *)aname andHealth:(int)health{
    if([super init]){
        _aname = aname;
        _health = health;
    }
    return self;
}

- (void)eat{
    NSLog(@"动物吃饭！");
}


@end
