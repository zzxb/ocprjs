//
//  ViewController.m
//  UITableView初识之分组类型
//
//  Created by jacky zzxb on 17/6/8.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSArray *proinces;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITableView *table = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    [self.view addSubview:table];
    
    table.dataSource = self;
    
    proinces = @[
                 @{
                     @"header":@"山东省",
                     @"foot":@"好城市",
                     @"data":@[
                             @"济南市",@"青岛市",@"烟台市",@"聊城市"
                             ]
                     },
                 @{
                     @"header":@"辽宁省",
                     @"foot":@"更好城市",
                     @"data":@[
                             @"沈阳市",@"大连市",@"盘锦市"
                             ]
                     }
                 ];
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return proinces.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectio
{
    
    NSDictionary *p = proinces[sectio];
    
    NSArray *citys = p[@"data"];
    
    return citys.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    NSDictionary *pp = proinces[indexPath.section];
    
    NSArray *cities = pp[@"data"];
    
    cell.textLabel.text = cities[indexPath.row];
    
    //NSLog(@"%i---------%i",indexPath.section,indexPath.row);
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSDictionary *pp = proinces[section];
    NSString *cities = pp[@"header"];
    return cities;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    NSDictionary *pp = proinces[section];
    NSString *cities = pp[@"foot"];
    return cities;
}

- (NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    return @[@"山东",@"辽宁"];
}


@end
