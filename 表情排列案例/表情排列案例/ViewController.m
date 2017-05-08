//
//  ViewController.m
//  表情排列案例
//
//  Created by jacky zheng on 2017/5/4.
//  Copyright © 2017年 jacky zheng. All rights reserved.
//

#import "ViewController.h"

#define imageWH 40

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int colunm = 2;
    CGFloat margin = (self.view.frame.size.width - colunm * imageWH) / (colunm + 1);
    CGFloat oneX = margin;
    CGFloat oneY = 100;
    for (int i = 0;i < 9;i++){
        NSString *imgName = [NSString stringWithFormat:@"01%i.jpg",i];
        int row = i / colunm;
        int col = i % colunm;
        CGFloat myX = oneX + (imageWH + margin) * col;
        CGFloat myY = oneY + (imageWH + margin) * row;
        [self addImg:imgName andX:myX andY:myY];
    }
}


- (void)addImg : (NSString *) imgName andX : (CGFloat)x andY : (CGFloat)y{
    UIImageView *img = [[UIImageView alloc] init];
    img.image = [UIImage imageNamed:imgName];
    img.frame = CGRectMake(x, y, imageWH, imageWH);
    [self.view addSubview:img];
}




- (IBAction)indexChange:(UISegmentedControl *)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    int colunm = sender.selectedSegmentIndex + 2;
    CGFloat margin = (self.view.frame.size.width - colunm * imageWH) / (colunm + 1);
    CGFloat oneX = margin;
    CGFloat oneY = 100;
    for (int i = 0;i < 9;i++){
        int row = i / colunm;
        int col = i % colunm;
        CGFloat myX = oneX + (imageWH + margin) * col;
        CGFloat myY = oneY + (imageWH + margin) * row;
        UIView *child = self.view.subviews[i+3];
        CGRect temp = child.frame;
        temp.origin = CGPointMake(myX, myY);
        child.frame = temp;
    }
    [UIView commitAnimations];
}
@end
