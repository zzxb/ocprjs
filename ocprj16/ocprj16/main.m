//
//  main.m
//  ocprj16
//
//  Created by zzxb on 16/9/3.
//  Copyright © 2016年 zzxb. All rights reserved.
//
#import "pojo/Product.h"
#import "service/ProductService.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        //        Product *p = [[Product alloc]init];
        //        p.productid = 1001;
        //        p.productname = @"香蕉";
        //        p.unitprice = 10.5;
    }
    @autoreleasepool {
        ProductService *ps = [[ProductService alloc]init];
        NSString *mysele = @"香蕉";
        Product *mypro = [ps findByProductName:mysele];
        
        if(mypro == nil){
            NSLog(@"对不起，没有相关产品!");
        }else{
            NSLog(@"产品信息:%@",mypro);
        }
    }
    return 0;
}
