//
//  NewsCellTableViewCell.m
//  自定义cell基于XIB之新闻列表
//
//  Created by jacky zzxb on 17/8/22.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "NewsCellTableViewCell.h"

@implementation NewsCellTableViewCell

+ (id)newsCellTableViewCell{
    return [[NSBundle mainBundle] loadNibNamed:@"newscell" owner:nil options:nil][0];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
