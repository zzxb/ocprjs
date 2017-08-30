//
//  ViewController.m
//  性能优化应用之淘宝产品列表
//
//  Created by jacky zzxb on 17/8/21.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "ViewController.h"
#import "Product.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>{
    NSMutableArray *products;
    NSMutableArray *delProducts;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"products" ofType:@"plist"];
    NSArray *arrs = [NSArray arrayWithContentsOfFile:plistPath];
    products = [[NSMutableArray alloc] init];
    delProducts = [NSMutableArray array];
    for (NSDictionary *dict in arrs) {
        Product *p = [Product productWithDict:dict];
        [products addObject:p];
    }
    _delButton.enabled = NO;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return products.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Product *p = products[indexPath.row];
    static NSString *cellID = @"mycell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    cell.imageView.image = [UIImage imageNamed:p.icon];
    cell.textLabel.text = p.productName;
    cell.detailTextLabel.text = p.desc;
    
    if([delProducts containsObject:p]){
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }else{
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 90;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    Product *p = products[indexPath.row];
    
    if([delProducts containsObject:p]){
        [delProducts removeObject:p];
    }else{
        [delProducts addObject:p];
    }
    
    if(delProducts.count == 0){
        _delButton.enabled = NO;
    }else{
        _delButton.enabled = YES;
    }
    
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationMiddle];
    
    _productLable.text = [NSString stringWithFormat:@"产品列表(%ld)",(long)delProducts.count];
    
}


- (IBAction)delClick:(id)sender {
    [products removeObjectsInArray:delProducts];
    [delProducts removeAllObjects];
    _productLable.text = @"产品列表";
    _delButton.enabled = NO;
    [_tableView reloadData];
}
@end
