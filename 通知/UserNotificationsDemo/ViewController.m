//
//  ViewController.m
//  UserNotificationsDemo
//
//  Created by Dely on 16/9/23.
//  Copyright © 2016年 Dely. All rights reserved.
//

#import "ViewController.h"
#import <UserNotifications/UserNotifications.h>
#import <CoreLocation/CoreLocation.h>
#import "NotificationAction.h"

@interface ViewController ()<CLLocationManagerDelegate>
@property(strong, nonatomic) CLLocationManager *locationManager;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   [self createLocalizedUserNotification1];
   // [self createLocalizedUserNotification2];
   // [self createLocalizedUserNotification3];
   // [self createLocalizedUserNotification4];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(100, 100, 100, 30);
    [button setTitle:@"更新" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonAction{
    [self createLocalizedUserNotification1];
    
    NSString *requestIdentifier = @"Dely.X.time";
    UNUserNotificationCenter* center = [UNUserNotificationCenter currentNotificationCenter];
    
    //删除设备已收到的所有消息推送
   // [center removeAllDeliveredNotifications];
    
    //删除设备已收到特定id的所有消息推送
   // [center removeDeliveredNotificationsWithIdentifiers:@[requestIdentifier]];
    
    //获取设备已收到的消息推送
    [center getDeliveredNotificationsWithCompletionHandler:^(NSArray<UNNotification *> * _Nonnull notifications) {
    }];
}


//定时推送
- (void)createLocalizedUserNotification1{
    
    // 设置触发条件 UNNotificationTrigger
    UNTimeIntervalNotificationTrigger *timeTrigger = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:5.0f repeats:NO];
    
    
    // 创建通知内容 UNMutableNotificationContent, 注意不是 UNNotificationContent ,此对象为不可变对象。
    UNMutableNotificationContent *content = [[UNMutableNotificationContent alloc] init];
    content.title = [NSString stringWithFormat:@"Dely 时间提醒 - title%@",[NSDate date]];
    content.subtitle = [NSString stringWithFormat:@"Dely 装逼大会竞选时间提醒 - subtitle"];
    content.body = @"Dely 装逼大会总决赛时间到，欢迎你参加总决赛！希望你一统X界 - body";
    content.badge = @666;
    content.sound = [UNNotificationSound defaultSound];
    content.userInfo = @{@"key1":@"value1",@"key2":@"value2"};
    
    content.categoryIdentifier = @"Dely_locationCategory";
    
    //可以在这里添加Actions
//    [NotificationAction addNotificationAction];
    
    // 创建通知标示
    NSString *requestIdentifier = @"Dely.X.time";
    
    // 创建通知请求 UNNotificationRequest 将触发条件和通知内容添加到请求中
    UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:requestIdentifier content:content trigger:timeTrigger];
    
    UNUserNotificationCenter* center = [UNUserNotificationCenter currentNotificationCenter];
    // 将通知请求 add 到 UNUserNotificationCenter
    [center addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
        if (!error) {
            NSLog(@"推送已添加成功 %@", requestIdentifier);
            //你自己的需求例如下面：
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"本地通知" message:@"成功添加推送" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
            [alert addAction:cancelAction];
            [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
            //此处省略一万行需求。。。。
        }
    }];

}

//定期
- (void)createLocalizedUserNotification2{
    // 定期推送
    // 创建日期组建
    NSDateComponents *components = [[NSDateComponents alloc] init];
    components.weekday = 4;
    components.hour = 10;
    components.minute = 12;
    // components 日期 repeats 是否重复
    UNCalendarNotificationTrigger *calendarTrigger = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    
    // 创建通知内容 UNMutableNotificationContent
    UNMutableNotificationContent *content = [[UNMutableNotificationContent alloc] init];
    content.title = @"时间提醒";
    content.subtitle = @"装X时间";
    content.body = @"您的装X时间所剩不多请到服务台续费！";
    content.badge = @666;
    
    // 创建通知标示
    NSString *requestIdentifier = @"Dely.X.time";
    
    // 创建通知请求 UNNotificationRequest 将触发条件和通知内容添加到请求中
    UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:requestIdentifier content:content trigger:calendarTrigger];
    
    UNUserNotificationCenter* center = [UNUserNotificationCenter currentNotificationCenter];
    // 将通知请求 add 到 UNUserNotificationCenter
    [center addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
        if (!error) {
            NSLog(@"推送已添加成功 %@", requestIdentifier);
        }
    }];
    
}

//定点
- (void)createLocalizedUserNotification3{
    // 定点推送
    // 创建位置信息
    
    CLLocationCoordinate2D center1 = CLLocationCoordinate2DMake(39.788857, 116.5559392);
    CLCircularRegion *region = [[CLCircularRegion alloc] initWithCenter:center1 radius:500 identifier:@"经海五路"];
    region.notifyOnEntry = YES;
    region.notifyOnExit = YES;
    // region 位置信息 repeats 是否重复 （CLRegion 可以是地理位置信息）
    UNLocationNotificationTrigger *locationTrigger = [UNLocationNotificationTrigger triggerWithRegion:region repeats:YES];
    
    // 创建通知内容 UNMutableNotificationContent
    UNMutableNotificationContent *content = [[UNMutableNotificationContent alloc] init];
    content.title = @"地点到了老司机";
    content.subtitle = @"装X时间";
    content.body = @"您的装X时间所剩不多请到服务台续费！";
    content.badge = @1;
    
    // 创建通知标示
    NSString *requestIdentifier = @"zhuangbility.time.of.tony";
    
    // 创建通知请求 UNNotificationRequest 将触发条件和通知内容添加到请求中
    UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:requestIdentifier content:content trigger:locationTrigger];
    
    UNUserNotificationCenter* center = [UNUserNotificationCenter currentNotificationCenter];
    // 将通知请求 add 到 UNUserNotificationCenter
    [center addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
        if (!error) {
            NSLog(@"推送已添加成功3 %@", requestIdentifier);
        }
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
