//
//  ViewController.m
//  自定义cell基于XIB之新闻列表
//
//  Created by jacky zzxb on 17/8/22.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "ViewController.h"
#import "NewsCellTableViewCell.h"
#import "News.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>{
    NSArray *arrs;
    NSMutableArray *data;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"news" ofType:@"plist"];
    arrs = [NSArray arrayWithContentsOfFile:plistPath];
    data = [NSMutableArray array];
    for (NSDictionary *dict in arrs) {
        News *news = [News newsWithDict:dict];
        [data addObject:news];
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"news";
    NewsCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if(cell == nil){
        cell = [NewsCellTableViewCell newsCellTableViewCell];
    }
    News *n = data[indexPath.row];
    cell.icon.image = [UIImage imageNamed:n.icon];
    cell.titles.text = n.titles;
    cell.coments.text = n.comments;
    cell.fromnews.text = n.fromnews;
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}


@end
