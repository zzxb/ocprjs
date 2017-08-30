//
//  Person.h
//  TableView删除数据之联系人案例
//
//  Created by jacky zzxb on 17/8/22.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic,strong) NSString *pname;
@property(nonatomic,strong) NSString *tel;

- (id)initWithPName : (NSString *)pname andTel : (NSString *)tel;

@end
