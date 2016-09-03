//
//  Hospital.h
//  ocprj13
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Animal;

@interface Hospital : NSObject

- (void)kanbing : (Animal *)animal;

- (void)kanbingWithMany : (NSMutableArray *) animals;

@end
