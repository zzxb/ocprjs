//
//  main.m
//  ocprj6
//
//  Created by zzxb on 16/8/30.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>

//NSString创建
void test(){
    
    //常见的字符串创建
    NSString *str = @"abcdefg";
    NSLog(@"%@", str);
    
    //指针字符类型的转换为字符串
    const char* text = "一二三四五六七八九十";
    str = [NSString stringWithUTF8String:text];
    NSLog(@"%@", str);
    
    //创建一个URL对象
    NSURL *url = [NSURL URLWithString:@"http://www.weather.com.cn/adat/sk/101010100.html"];
    //将URL响应的JSON内容转换为字符串
    NSString *strText = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%@", strText);

}

//字符串处理
void test2(){
    NSString *str = @"Jinan";
    
    //转换成大写
    NSLog(@"大写: %@", [str uppercaseString]);
    
    //转换成小写
    NSLog(@"小写: %@", [str lowercaseString]);
    
    //转换成首字母大写
    NSLog(@"首字母大写: %@", [str capitalizedString]);
    
    //判断是否相同
    BOOL result = [@"abc" isEqualToString:@"ABC"];
    NSLog(@"%i", result);
    
    //字符串拼接
    NSString *str2 = [str stringByAppendingString:@"Shandong"];
    NSLog(@"%@",str2);
    
    //字符串拼接2
    NSString *str3 = [NSString stringWithFormat: @"城市信息为： %@ 市 %@ 省",str,str2];
    NSLog(@"%@",str3);
    
    
}

//字符串搜索
void test3(){
    NSString *str = @"ShangHai123456";
    
    NSLog(@"是否已Sh开头%i", [str hasPrefix:@"Sh"]);
    NSLog(@"是否已56结尾%i", [str hasSuffix:@"56"]);
    
    //查找字符串所在位置
    NSRange range = [str rangeOfString:@"i12"];
    
    if (range.location == NSNotFound)
    {
        NSLog(@"不能找到");
    }
    else
    {
        NSLog(@"找到的范围: %@", NSStringFromRange(range));
    }
    
}

//字符串截取
void test4(){
    NSString *str = @"123456789";
    
    NSLog(@"%@", [str substringFromIndex:3]);
    
    NSLog(@"%@", [str substringToIndex:3]);
    
    NSRange range = NSMakeRange(4, 5);
    NSLog(@"%@", [str substringWithRange:range]);
    
    NSString *str2 = @"1,2,3-4-5-6,7,8,9";
    NSArray *array = [str2 componentsSeparatedByString:@"-"];
    for (NSString *var in array) {
        NSLog(@"%@",var);
    }
    
    NSString *str3 = [array objectAtIndex:0];
    NSLog(@"%@", str3);
}

//字符串转换
void test5(){
    NSString *str = @"123";
    
    int a = [str intValue];
    NSLog(@"%i", a);
    
    float b = [str floatValue];
    NSLog(@"%.2f", b);
    
    //返回字符串的个数
    NSString *str1 = @"我是字符串!";
    NSLog(@"%zi", [str1 length]);
    
    //取出对应的字符串
    unichar temp = [@"abcdefg" characterAtIndex:3];
    NSLog(@"%c", temp);
    
    const char *s = [@"uvwxyz" UTF8String];
    NSLog(@"%s", s);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        test2();
    }
    return 0;
}
