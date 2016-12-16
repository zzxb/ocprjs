//
//  ProductService.h
//  ocprj19
//
//  Created by jacky zheng on 16/12/15.
//  Copyright © 2016年 jacky zheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"
#import "Cart.h"
/**
 * 1.获取所有产品
 * 2.提交购物车，计算价格
 * 3.根据产品的编码获得产品对象
 **/
@interface ProductService : NSObject

@property (strong,nonatomic,readonly) NSMutableArray *allProduct;
@property (assign,nonatomic,readonly) float totalPrice;

- (void)submitCart : (Cart *)cart;

- (Product *) findByProductCode : (NSString *)productCode;

@end
