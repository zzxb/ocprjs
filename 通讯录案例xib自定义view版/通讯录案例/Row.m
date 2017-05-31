//
//  Row.m
//  通讯录案例
//
//  Created by jacky zzxb on 17/5/31.
//  Copyright © 2017年 jacky zheng. All rights reserved.
//

#import "Row.h"

@implementation Row

+(id)RowWithIcon:(NSString *)icon andContent:(NSString *)content andOwner:(id)owner{
    Row *row = [[NSBundle mainBundle] loadNibNamed:@"row" owner:owner options:nil][0];
    
    [row.btnIcon setBackgroundImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
    
    row.contentLabel.text = content;
    
    return row;
}

@end
