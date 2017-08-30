//
//  ViewController.m
//  网络之AFNetworking
//
//  Created by jacky zzxb on 17/8/25.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "ViewController.h"
#import <AFHTTPSessionManager.h>
#import "Product.h"
#import "Message.h"
#import <YYModel.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self get];
}

- (void)get{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSString *url = @"http://myserver_home.skedu.com:60001/shopapi/cxbypid/2";
    [manager GET:url parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        Message *m = [Message yy_modelWithJSON:responseObject];
        
        NSLog(@"---%@",m.data.psimage);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"-----%@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
