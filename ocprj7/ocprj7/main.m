//
//  main.m
//  ocprj7
//
//  Created by zzxb on 16/9/2.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //不可变数组NSArray的基本用法
        // 创建数组两种方式
        NSArray *array = @[@"one",@"two",@"three"];
        // NSArray *array = nil;
        // 注意最后的nil只是一个结束标识，而不是其中的一个元素
        // array = [NSArray arrayWithObjects:@"one",@"two",@"three",nil];
        // 打印一个数组对象，注意打印的格式
        NSLog(@"array:%@", array);
        // 打印其中一个元素，注意的时OC的数组保存的都是对象，所以格式化输出时候一定要用%@
        NSLog(@"%@", array[2]);
        // 取出相关元素的另一种写法
        NSLog(@"%@", [array objectAtIndex:1]);
        // 数组元素个数
        NSLog(@"%lu", [array count]);
        // 最后一个元素，第一个firstObject
        NSLog(@"%@", [array lastObject]);
        // arrayByAddingObject给一个数组对象加一个元素生成一个新的数组
        NSArray *array1 = [array arrayByAddingObject:@"four"];
        // arrayByAddingObjectsFromArray给一个数组对象加一个数组生成一个新的数组
        NSArray *array2 = [array arrayByAddingObjectsFromArray:array1];        NSLog(@"array:%@", array2);
        // 从一个数组提取一个子数组
        NSArray *array5 = [array2 subarrayWithRange:NSMakeRange(2, 2)];
        NSLog(@"array:%@", array5);
        // OC数组里头可以存放不同类型的数据，这点与C区分
        NSObject *newObj = [NSObject new];
        NSArray *array3 = [array arrayByAddingObject:newObj];
        NSString *str1 = @"one:two:three:four";
        // 用一个固定的分隔符把一个字符串隔开创建一个数组
        NSArray *array4 = [str1 componentsSeparatedByString:@":"];
        // containsObject可以用来判断数组是否包含一个指定的元素
        if ([array4 containsObject:@"one"]) {
            NSLog(@"array4 包含 one");
        }
        // 查出一个元素在数组中的索引位置
        NSLog(@"one 在array4中的索引位置 %lu", [array4 indexOfObject:@"three"]);
        
        // ----------------可变数组NSMutableArray的基本用法
        // 创建一个可变数组
        NSMutableArray *mtArray1 = [NSMutableArray arrayWithCapacity:50];
        // 往可变数组添加一个新的元素
        [mtArray1 addObject:@"one"];
        NSObject *newObj1 = [NSObject new];
        [mtArray1 addObject:newObj1];
        [mtArray1 addObject:@"one1"];
        [mtArray1 addObject:@"one2"];
        [mtArray1 addObject:@"one3"];
        
        NSLog(@"mtArray afterremove:%@", mtArray1);
        // 从可变数组中移除一个元素
        [mtArray1 removeObject:@"one2"];        NSLog(@"mtArray:%@", mtArray1);
        //在指定的索引位置插入一个新的元素
        [mtArray1 insertObject:@"one4" atIndex:2];         NSLog(@"mtArray:%@", mtArray1);
        // 替换掉指定索引位置的元素
        [mtArray1 replaceObjectAtIndex:2 withObject:@"xxxxx"];
        
        
        // ------------------ 遍历数组。就是一个一个元素数一下
        // 三种方式
        // 1.for循环
        
        // 2.枚举器
        // 生成一个正向的枚举器
        NSEnumerator *enumerator1 = [mtArray1 objectEnumerator];
        id obj1;
        while (obj1 = [enumerator1 nextObject]) {
            NSLog(@"obj1=======%@", obj1);
        }
        // 反向枚举器
        NSEnumerator *enumerator2 = [mtArray1 reverseObjectEnumerator];
        id obj2;
        while (obj2 = [enumerator2 nextObject]) {
            NSLog(@"obj2=======%@", obj2);
        }
        
        // 3.快速枚举
        // 快速枚举时需要注意：数组里面的数据类型是否统一！如果不统一的话，for语句里头要写一个统一的类型，一般都是所有元素的父类
        for (NSString *objName in mtArray1) {
            NSLog(@"obj=========%@", objName);
        }
    }
    return 0;
}
