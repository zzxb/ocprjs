//
//  Ployer.h
//  ocprj11
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PlayerEmp;

@interface Ployer : NSObject

@property(strong,nonatomic) PlayerEmp *playemp;

- (void) playgame;

@end