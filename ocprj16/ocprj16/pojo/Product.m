//
//  Product.m
//  ocprj16
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//
#import "Product.h"

@implementation Product

@synthesize productid = _productid;
@synthesize productname = _productname;
@synthesize unitprice = _unitprice;

- (NSString *)description{
    NSString *value = [NSString stringWithFormat:@"%i,%@,%f",_productid,_productname,_unitprice];
    return value;
}

- (void)dealloc{
    NSLog(@"销毁product对象,%@",self);
}

@end

