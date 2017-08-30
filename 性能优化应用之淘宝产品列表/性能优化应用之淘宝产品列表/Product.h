//
//  Product.h
//  性能优化应用之淘宝产品列表
//
//  Created by jacky zzxb on 17/8/21.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property(nonatomic,copy) NSString *productName;
@property(nonatomic,copy) NSString *icon;
@property(nonatomic,copy) NSString *desc;

+ (id) productWithDict : (NSDictionary *)dict;

@end
