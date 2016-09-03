//
//  main.m
//  ocprj13
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "pojo/Animal.h"
#import "pojo/Dog.h"
#import "pojo/Cat.h"
#import "service/Hospital.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Animal *cat = [[Cat alloc]initWithAname:@"加菲猫"];
        Animal *dog = [[Dog alloc]initWithAname:@"旺财" andHealth:70];
        cat.health = 55;
        NSMutableArray *data = [[NSMutableArray alloc]init];
        [data addObject:cat];
        [data addObject:dog];
        Hospital *hos = [[Hospital alloc]init];
        [hos kanbingWithMany:data];
        //      Cat *mycat = (Cat *)cat;
        //      [mycat play];
        [(Cat *)cat play];//强制类型转换为子类类型
        //        [hos kanbing:cat];
        //        NSLog(@"当前%@宠物，生命值为：%i",cat.aname,cat.health);
    }
    return 0;
}