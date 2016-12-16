//
//  Product.h
//  ocprj19
//
//  Created by jacky zheng on 16/12/15.
//  Copyright © 2016年 jacky zheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property(strong,nonatomic) NSString *productCode;
@property(strong,nonatomic) NSString *productName;
@property(assign,nonatomic) float unitPrice;

- (instancetype) initWithProductCode : (NSString *)productCode
                       andProductName: (NSString *)productName
                         andUnitPrice: (float)unitPrice;

@end
