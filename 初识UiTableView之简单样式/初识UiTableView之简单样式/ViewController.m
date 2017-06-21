//
//  ViewController.m
//  初识UiTableView之简单样式
//
//  Created by jacky zzxb on 17/6/14.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource>{
    NSArray *data;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    data = @[
             @{@"icon":@"010.jpg",
               @"name":@"羊肉串"
             },
             @{@"icon":@"011.jpg",
               @"name":@"骨髓"
               },
             @{@"icon":@"012.jpg",
               @"name":@"蒜爆肉"
               },
             @{@"icon":@"013.jpg",
               @"name":@"羊肉串"
               },
             @{@"icon":@"014.jpg",
               @"name":@"羊肉串"
               },
             @{@"icon":@"015.jpg",
               @"name":@"羊肉串"
               },
             @{@"icon":@"016.jpg",
               @"name":@"羊肉串"
               },
             @{@"icon":@"018.jpg",
               @"name":@"羊肉串"
               },
             @{@"icon":@"019.jpg",
               @"name":@"羊肉串"
               }
             ];
    
    UITableView *table = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    table.dataSource = self;
    
    [self.view addSubview:table];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellName = @"mycell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"mycell"];
    }
    
    NSDictionary *p = data[indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:p[@"icon"]];
    
    cell.textLabel.text = p[@"name"];
    
    cell.detailTextLabel.text = @"fffff";
    
    return cell;
}


@end
