//
//  Product.m
//  性能优化应用之淘宝产品列表
//
//  Created by jacky zzxb on 17/8/21.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "Product.h"

@implementation Product

+ (id)productWithDict:(NSDictionary *)dict{
    Product *p = [[Product alloc] init];
    p.productName = dict[@"productName"];
    p.icon = dict[@"icon"];
    p.desc = dict[@"desc"];
    return p;
}

@end
