//
//  NotificationViewController.m
//  NotificationScene
//
//  Created by Dely on 16/9/23.
//  Copyright © 2016年 Dely. All rights reserved.
//

#import "NotificationViewController.h"
#import <UserNotifications/UserNotifications.h>
#import <UserNotificationsUI/UserNotificationsUI.h>

@interface NotificationViewController () <UNNotificationContentExtension>

@property IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation NotificationViewController

//默认的NotificationContent的VC中，默认有两个方法。分别为viewDidLoad和didReceiveNotification。前者渲染UI，后者获取通知信息，更新UI控件中的数据。
//UNNotificationExtensionDefaultContentHidden 这个key是boolean类型，之前我设置好自定义UI之后发现，出现了两个title，两个message,是因为我们没有隐藏苹果官方格式的通知，隐藏掉就好了，这里要设置为YES

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any required interface initialization here.
    
//    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
//    [self.view addSubview:view];
//    view.backgroundColor = [UIColor redColor];
}

- (void)didReceiveNotification:(UNNotification *)notification {

    self.label.text = notification.request.content.body;
    UNNotificationContent * content = notification.request.content;
    UNNotificationAttachment * attachment = content.attachments.firstObject;
    if (attachment.URL.startAccessingSecurityScopedResource) {
        self.imageView.image = [UIImage imageWithContentsOfFile:attachment.URL.path];
    }
    
}

@end
