//
//  ViewController.m
//  UITableView初识之分组类型
//
//  Created by jacky zzxb on 17/6/8.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITableView *table = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    [self.view addSubview:table];
    
    table.dataSource = self;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectio
{
    if(sectio == 0){
        return 4;
    }
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    NSString *content = @"";
    
    if(indexPath.section == 0){
        switch (indexPath.row) {
            case 0:
                content = @"济南";
                break;
            case 1:
                content = @"青岛";
                break;
            case 2:
                content = @"烟台";
                break;
                
            case 3:
                content = @"聊城";
                break;
            default:
                break;
        }
    }else{
        switch (indexPath.row) {
            case 0:
                content = @"沈阳";
                break;
            case 1:
                content = @"大连";
                break;
            case 2:
                content = @"盘锦";
                break;
            default:
                break;
        }
    }
    
    cell.textLabel.text = content;
    
    //NSLog(@"%i---------%i",indexPath.section,indexPath.row);
    return cell;
}



@end
