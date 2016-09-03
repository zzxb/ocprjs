//
//  Animal.h
//  ocprj13
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

- (id)initWithAname : (NSString*) aname;

- (id)initWithAname : (NSString*) aname andHealth : (int) health;

@property(weak,nonatomic) NSString* aname;
@property(assign,nonatomic) int health;

- (void) eat;

@end
