//
//  main.m
//  ocprj18
//
//  Created by zzxb on 16/10/9.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPSessionManager.h"
int main(int argc, const char * argv[]) {
    do {
        @autoreleasepool
        {
            AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
            [manager GET:@"http://www.weather.com.cn/data/sk/101010100.html" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                NSData *jsonData = [NSJSONSerialization dataWithJSONObject:responseObject options:NSJSONWritingPrettyPrinted error:nil];
                
                NSString *jsonStr = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
                NSLog(@"这是全部数据%@",jsonStr);
            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                NSLog(@"Error: %@", error);
            }];
            [[NSRunLoop currentRunLoop] run];
        }
    } while (YES);

    return 0;
}
