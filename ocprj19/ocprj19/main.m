//
//  main.m
//  ocprj19
//
//  Created by jacky zheng on 16/12/15.
//  Copyright © 2016年 jacky zheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"欢迎进入山科超市....");
        NSLog(@"请选择商品:");
        ProductService *ps = [[ProductService alloc] init];
        NSMutableArray *allProducts = ps.allProduct;
        for (Product *p in allProducts) {
            NSLog(@"产品编号:%@ --- 产品名称:%@ --- 产品价格: %.2f",p.productCode,p.productName,p.unitPrice);
        }
        NSLog(@"请输入产品编号，结束购物输入-1");
        Cart *myCart = [[Cart alloc] init];
        while (YES) {
            char info[40];
            scanf("%s",info);
            NSString *myInfo = [NSString stringWithCString:info encoding:NSUTF8StringEncoding];
            if([myInfo intValue] < 0){
                break;
            }
            [myCart addProduct:[ps findByProductCode:myInfo]];
            NSLog(@"请输入产品编号，结束购物输入-1");
        }
        //结算提交购物车
        [ps submitCart:myCart];
        //给出价格
        NSLog(@"您共计需要支付:%.2f",ps.totalPrice);
    }
    return 0;
}
