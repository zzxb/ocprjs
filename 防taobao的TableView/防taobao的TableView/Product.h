//
//  Product.h
//  防taobao的TableView
//
//  Created by jacky zzxb on 17/8/20.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property(nonatomic,copy) NSString *icon;
@property(nonatomic,copy) NSString *productName;
@property(nonatomic,copy) NSString *productDetailContent;

+ (id)productWithName : (NSString *)productName andIcon : (NSString *)icon andProductDetailContent : (NSString *)productDetailContent;

@end
