//
//  ViewController.h
//  通讯录案例
//
//  Created by jacky zheng on 2017/5/8.
//  Copyright © 2017年 jacky zheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)addLxr:(UIBarButtonItem *)sender;
- (IBAction)removeLxr:(UIBarButtonItem *)sender;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *removeBar;


@end

