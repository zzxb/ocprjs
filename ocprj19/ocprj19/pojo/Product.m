//
//  Product.m
//  ocprj19
//
//  Created by jacky zheng on 16/12/15.
//  Copyright © 2016年 jacky zheng. All rights reserved.
//

#import "Product.h"

@implementation Product

- (instancetype)initWithProductCode:(NSString *)productCode andProductName:(NSString *)productName andUnitPrice:(float)unitPrice{
    self = [super init];
    if(self != nil){
        _productCode = productCode;
        _productName = productName;
        _unitPrice = unitPrice;
    }
    return self;
}

@end
