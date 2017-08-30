//
//  News.h
//  自定义cell基于XIB之新闻列表
//
//  Created by jacky zzxb on 17/8/22.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface News : NSObject

@property(nonatomic,strong) NSString *icon;
@property(nonatomic,strong) NSString *titles;
@property(nonatomic,strong) NSString *comments;
@property(nonatomic,strong) NSString *fromnews;

+ (id)newsWithDict : (NSDictionary *)dict;

@end
