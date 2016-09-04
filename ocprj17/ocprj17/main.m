//
//  main.m
//  ocprj17
//
//  Created by zzxb on 16/9/4.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONKit/JSONKit.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *res = nil;
        
        /*
         * json格式编码
         */
        
        //字符串
        NSString *str = @"this is a nsstring";
        res = [str JSONString];
        NSLog(@"res= %@", [NSString stringWithString: res]);
        //res= "this is a nsstring";
        
        //数组
        NSArray *arr = [[NSArray alloc] initWithObjects:@"One",@"Two",@"Three",nil];
        res = [arr JSONString];
        NSLog(@"res= %@", [NSString stringWithString: res]);
        
        //字典类型（对象）
        NSArray *arr1 = [NSArray arrayWithObjects:@"dog",@"cat",nil];
        NSArray *arr2 = [NSArray arrayWithObjects:[NSNumber numberWithBool:YES],[NSNumber numberWithInt:30],nil];
        NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:arr1,@"pets",arr2,@"other",nil];
        res = [dic JSONString];
        NSLog(@"res= %@", [NSString stringWithString: res]);
        
        /*
         * json格式解码
         */
        JSONDecoder *jd=[[JSONDecoder alloc] init];
        
        //针对NSData数据
        NSData *data = [dic JSONData];
        NSDictionary *ret = [jd objectWithData: data];
        NSLog(@"res= %@", [ret objectForKey:@"pets"]);
        //res= (
        //  dog,
        //  cat
        //)
        NSLog(@"res= %@", [[ret objectForKey:@"other"] objectAtIndex:0]);
        //res= 1
        
        //针对NSString字符串数据
        NSString *nstr = [dic JSONString];
        NSDictionary *ret2 = [jd objectWithUTF8String:(const unsigned char *)[nstr UTF8String] length:(unsigned int)[nstr length]];
        NSLog(@"res= %d", [[ret2 objectForKey:@"pets"] indexOfObject:@"cat"]);
        //res= 1
        NSLog(@"res= %@", [[ret2 objectForKey:@"other"] objectAtIndex:1]);
        //res= 30
    }
    return 0;
}
