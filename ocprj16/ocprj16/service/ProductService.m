//
//  ProductService.m
//  ocprj16
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//
#import "ProductService.h"
#import "Product.h"

@implementation ProductService


+ (NSMutableArray *)getData{
    NSMutableArray *data = [[NSMutableArray alloc]init];
    Product *p = [[Product alloc]init];
    p.productid = 1001;
    p.productname = @"香蕉";
    p.unitprice = 4.5;
    Product *p2 = [[Product alloc]init];
    p2.productid = 1002;
    p2.productname = @"苹果";
    p2.unitprice = 5.5;
    Product *p3 = [[Product alloc]init];
    p3.productid = 1003;
    p3.productname = @"橘子";
    p3.unitprice = 6.5;
    [data addObject:p];
    [data addObject:p2];
    [data addObject:p3];
    return data;
}

- (Product *)findByProductName:(NSString *)productname{
    NSMutableArray *mydata = [ProductService getData];
    for (Product *mypro in mydata) {
        if([[mypro productname] isEqualToString:productname]){
            return mypro;
        }
    }
    return nil;
}

@end