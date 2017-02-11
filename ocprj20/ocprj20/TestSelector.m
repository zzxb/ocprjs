//
//  TestSelector.m
//  ocprj20
//
//  Created by zzxb on 17/2/8.
//  Copyright © 2017年 zzxb. All rights reserved.
//

#import "TestSelector.h"

@implementation TestSelector

- (void)callToSelectorMethod{
    //[self performSelector:@selector(myMethod) withObject:nil];
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    [dict setObject:@"kkkk" forKey:@"oldView"];
    [dict setObject:@"yyyy" forKey:@"newView"];
    [self performSelector:@selector(onTimer:) withObject:dict];
    
}

# pragma mark 支持@selector传递多个参数
- (void) onTimer : (NSDictionary *)timer{
    NSLog(@"测试！！%@,%@",[timer objectForKey:@"oldView"],[timer objectForKey:@"newView"]);
}

@end
