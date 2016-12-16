//
//  Cart.h
//  ocprj19
//
//  Created by jacky zheng on 16/12/15.
//  Copyright © 2016年 jacky zheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface Cart : NSObject

@property(strong,nonatomic) NSMutableArray *products;

- (void) addProduct : (Product *)product;

- (void) removeProduct : (Product *)product;

@end
