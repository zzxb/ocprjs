//
//  ViewController.h
//  性能优化应用之淘宝产品列表
//
//  Created by jacky zzxb on 17/8/21.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *productLable;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *delButton;
- (IBAction)delClick:(id)sender;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

