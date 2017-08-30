//
//  ViewController.m
//  防taobao的TableView
//
//  Created by jacky zzxb on 17/8/20.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "ViewController.h"
#import "Product.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>{
    NSMutableArray *products;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Product *p = [Product productWithName:@"图书/音像" andIcon:@"010.jpg" andProductDetailContent:@"小说,唱片,计算机用书"];
    Product *p2 = [Product productWithName:@"母婴用品" andIcon:@"011.jpg" andProductDetailContent:@"尿不湿,奶粉等"];
    Product *p3 = [Product productWithName:@"玩具" andIcon:@"012.jpg" andProductDetailContent:@"小汽车,积木,乐高等"];

    products = [[NSMutableArray alloc] initWithObjects:p,p2,p3,nil];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [products count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    
    Product *p = products[indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"产品：%@",p.productName];
    
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@产品非常好",p.productDetailContent];
    
    cell.imageView.image = [UIImage imageNamed:p.icon];
    
    //设置右边的小箭头
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    //设置右边的小view
    //cell.accessoryView = [UIButton buttonWithType:UIButtonTypeContactAdd];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - 代理方法
# pragma mark - 设置行高度
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}

# pragma mark - 代理方法
# pragma mark - 选中某一行的监听

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Product *p = products[indexPath.row];
    
    NSString *message = [NSString stringWithFormat:@"你点了%@",p.productName];
    
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"标题" message:message preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"产品名称";
    }];
    
    //密码形式的
//    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
//        textField.placeholder = @"请输入密码";
//        textField.secureTextEntry = true;
//    }];
    
    //获取输入框中的内容
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        p.productName = alertController.textFields.firstObject.text;
        //重新刷新数据
        //[_tableView reloadData];
        //局部刷新数据
        NSIndexPath *rowIndexPath = [NSIndexPath indexPathForRow:indexPath.row inSection:0];
        
        NSArray *rowIndexPaths = @[rowIndexPath];
        
        [_tableView reloadRowsAtIndexPaths:rowIndexPaths withRowAnimation:UITableViewRowAnimationBottom];
    }];
    [alertController addAction:cancelAction];
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];

    
}

@end
