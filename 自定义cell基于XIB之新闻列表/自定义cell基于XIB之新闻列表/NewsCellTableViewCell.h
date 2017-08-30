//
//  NewsCellTableViewCell.h
//  自定义cell基于XIB之新闻列表
//
//  Created by jacky zzxb on 17/8/22.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsCellTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titles;
@property (weak, nonatomic) IBOutlet UILabel *fromnews;
@property (weak, nonatomic) IBOutlet UILabel *coments;
@property (weak, nonatomic) IBOutlet UIImageView *icon;

+ (id) newsCellTableViewCell;


@end
