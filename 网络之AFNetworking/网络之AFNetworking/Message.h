//
//  Message.h
//  网络之AFNetworking
//
//  Created by jacky zzxb on 17/8/25.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface Message : NSObject

@property(nonatomic,strong) NSString *status;

@property(nonatomic,strong) Product *data;

@property(nonatomic,strong) NSString *msg;

@end
