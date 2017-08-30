//
//  Product.m
//  防taobao的TableView
//
//  Created by jacky zzxb on 17/8/20.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "Product.h"

@implementation Product

+ (id)productWithName:(NSString *)productName andIcon:(NSString *)icon andProductDetailContent:(NSString *)productDetailContent{
    Product *product = [[Product alloc] init];
    product.productName = productName;
    product.icon = icon;
    product.productDetailContent = productDetailContent;
    return product;
}

@end
