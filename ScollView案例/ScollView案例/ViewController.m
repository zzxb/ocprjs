//
//  ViewController.m
//  ScollView案例
//
//  Created by jacky zzxb on 17/6/6.
//  Copyright © 2017年 jacky zzxb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    
    scrollView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    scrollView.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:scrollView];
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.image = [UIImage imageNamed:@"img02.jpg"];
    CGFloat wImage = imageView.image.size.width;
    CGFloat hImage = imageView.image.size.height;
    
    imageView.frame = CGRectMake(0, 0, wImage, hImage);
    
    [scrollView addSubview:imageView];
    
    scrollView.contentSize = imageView.image.size;
    
    scrollView.showsHorizontalScrollIndicator = NO;
    
    //scrollView.contentInset = UIEdgeInsetsMake(0, 0, 0, 50);
    
    scrollView.bounces = NO;
    
}



@end
