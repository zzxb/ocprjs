//
//  ViewController.m
//  TableView删除数据之联系人案例
//
//  Created by jacky zzxb on 17/8/22.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>{
    NSMutableArray *arrs;
}

@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    arrs = [NSMutableArray array];
    for(int i = 0;i < 15;i++){
        NSString *pName = [NSString stringWithFormat:@"第%i个联系人",i+1];
        NSString *tel = [NSString stringWithFormat:@"10000%i",arc4random()*1000];
        Person *p = [[Person alloc] initWithPName:pName andTel:tel];
        [arrs addObject:p];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arrs.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"mycell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellID];
    }
    
    Person *p = arrs[indexPath.row];
    
    cell.textLabel.text = p.pname;
    cell.detailTextLabel.text = p.tel;
    
    return cell;
}



- (IBAction)delOnclick:(id)sender {
    BOOL state = !_tableView.editing;
    [_tableView setEditing:state animated:YES];
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if(editingStyle != UITableViewCellEditingStyleDelete){
        return;
    }
    [arrs removeObjectAtIndex:indexPath.row];
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationTop];
    
}

@end
