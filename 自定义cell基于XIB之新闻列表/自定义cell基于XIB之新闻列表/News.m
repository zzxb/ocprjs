//
//  News.m
//  自定义cell基于XIB之新闻列表
//
//  Created by jacky zzxb on 17/8/22.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "News.h"

@implementation News

+ (id)newsWithDict:(NSDictionary *)dict{
    News *news = [[News alloc] init];
    
    news.icon = dict[@"icon"];
    news.titles = dict[@"titles"];
    news.comments = [NSString stringWithFormat:@"评论数:%@",dict[@"comments"]];
    news.fromnews = dict[@"fromnews"];
    
    return news;
}

@end
