//
//  Person.m
//  TableView删除数据之联系人案例
//
//  Created by jacky zzxb on 17/8/22.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)initWithPName:(NSString *)pname andTel:(NSString *)tel{
    self = [super init];
    if(self != nil){
        self.pname = pname;
        self.tel = tel;
    }
    return self;
}

@end
