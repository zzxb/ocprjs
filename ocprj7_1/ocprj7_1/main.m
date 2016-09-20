//
//  main.m
//  ocprj7_1
//
//  Created by zzxb on 16/9/2.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        /*
         *字典
         存储的内存不是连续的
         用key和value进行对应（键值）
         kvc 键值编码
         */
        NSDictionary *map = [[NSDictionary alloc] init];
        NSDictionary *dict1 = [NSDictionary dictionaryWithObject:@"1" forKey:@"a"];
        NSDictionary *dict2 = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"1",@"2",@"3", nil] forKeys:[NSArray arrayWithObjects:@"a",@"b",@"c", nil]];
        
        NSLog(@"%@",dict1);
        NSLog(@"%@",dict2);
        
        int count =(int)[dict2 count];
        
        NSString *value = [dict2 valueForKey:@"b"];
        NSLog(@"value = %@",value);
        
        NSString *value2 = [dict2 objectForKey:@"b"];
        NSLog(@"value = %@",value2);
        
        NSArray *allValues = [dict2 allValues];
        NSLog(@"allValues = %@",allValues);
        
        NSArray * allKeys = [dict2 allKeys];
        NSLog(@"allKeys = %@",allKeys);
        
        NSArray *strarray = [dict2 objectsForKeys:[NSArray arrayWithObjects:@"a",@"d",@"c", nil] notFoundMarker:@"not found"];
        NSLog(@"strarray = %@",strarray);
        
        //遍历字典
        for (NSString *key in dict2) {
            NSLog(@"%@ = %@",key,[dict2 objectForKey:key]);
        }
        
        NSEnumerator *en = [dict2 keyEnumerator];
        id keyvalue = nil;
        while (keyvalue = [en nextObject]) {
            NSLog(@"key:%@-value:%@",keyvalue,[dict2 valueForKey:keyvalue]);
        }
        
        [dict2 enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            NSLog(@"key_block - %@",key);
        }];
        
        NSMutableDictionary *dict3 = [[NSMutableDictionary alloc] init];
        [dict3 setObject:@"1" forKey:@"a"];
        [dict3 setObject:@"fff" forKey:@"a"];
        NSLog(@"%@",dict3);
        [dict3 removeAllObjects];
        [dict3 removeObjectForKey:@"a"];
        [dict3 removeObjectsForKeys:[NSArray arrayWithObjects:@"a", nil]];
        
    }
    return 0;
}
