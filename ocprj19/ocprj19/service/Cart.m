//
//  Cart.m
//  ocprj19
//
//  Created by jacky zheng on 16/12/15.
//  Copyright © 2016年 jacky zheng. All rights reserved.
//

#import "Cart.h"

@implementation Cart

- (instancetype) init{
    self = [super init];
    if(self != nil){
        _products = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addProduct:(Product *)product{
    [_products addObject:product];
}

- (void)removeProduct:(Product *)product{
    for (Product *p in _products) {
        if([p.productCode isEqualToString:product.productCode]){
            [_products removeObject:p];
        }
    }
}

@end
