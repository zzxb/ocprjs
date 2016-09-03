//
//  ProductService.h
//  ocprj16
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Product;

@interface ProductService : NSObject

+ (NSMutableArray *)getData;

- (Product*) findByProductName : (NSString*) productname;

@end
