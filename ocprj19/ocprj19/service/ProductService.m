//
//  ProductService.m
//  ocprj19
//
//  Created by jacky zheng on 16/12/15.
//  Copyright © 2016年 jacky zheng. All rights reserved.
//

#import "ProductService.h"

@interface ProductService()
//这里声明所有的私有非开放的方法或变量

@property(assign,nonatomic) float totalPrice;

@end

@implementation ProductService

- (instancetype) init{
    self = [super init];
    if(self != nil){
        _allProduct = [[NSMutableArray alloc] init];
        Product *p = [[Product alloc] initWithProductCode:@"1001" andProductName:@"pen" andUnitPrice:11.5f];
        Product *p2 = [[Product alloc] initWithProductCode:@"1002" andProductName:@"book" andUnitPrice:21.5f];
        Product *p3 = [[Product alloc] initWithProductCode:@"1003" andProductName:@"apple" andUnitPrice:5.5f];
        [_allProduct addObject:p];
        [_allProduct addObject:p2];
        [_allProduct addObject:p3];
    }
    return self;
}


- (void)submitCart:(Cart *)cart{
    for (Product *p in cart.products) {
        self.totalPrice = self.totalPrice + p.unitPrice;
    }
}

- (Product *)findByProductCode:(NSString *)productCode{
    
    for (Product *p in _allProduct) {
        if([p.productCode isEqualToString:productCode]){
            return p;
        }
    }
    
    return nil;
}

@end
