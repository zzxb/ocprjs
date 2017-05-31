//
//  Row.h
//  通讯录案例
//
//  Created by jacky zzxb on 17/5/31.
//  Copyright © 2017年 jacky zheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Row : UIView

+ (id)RowWithIcon : (NSString *)icon andContent : (NSString *)content andOwner : (id)owner;

@property (weak, nonatomic) IBOutlet UIButton *btnIcon;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;


@end
