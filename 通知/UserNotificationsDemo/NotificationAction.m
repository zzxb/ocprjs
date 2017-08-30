//
//  NotificationAction.m
//  UserNotificationsDemo
//
//  Created by Dely on 16/10/8.
//  Copyright © 2016年 Dely. All rights reserved.
//

#import "NotificationAction.h"
#import <UserNotifications/UserNotifications.h>

@implementation NotificationAction

+ (void)addNotificationAction{

    //创建按钮Action
    UNNotificationAction *lookAction = [UNNotificationAction actionWithIdentifier:@"action.join" title:@"接收邀请" options:UNNotificationActionOptionAuthenticationRequired];
    
    UNNotificationAction *joinAction = [UNNotificationAction actionWithIdentifier:@"action.look" title:@"查看邀请" options:UNNotificationActionOptionForeground];
    
    UNNotificationAction *cancelAction = [UNNotificationAction actionWithIdentifier:@"action.cancel" title:@"取消" options:UNNotificationActionOptionDestructive];
    
    // 注册 category
    // * identifier 标识符
    // * actions 操作数组
    // * intentIdentifiers 意图标识符 可在 <Intents/INIntentIdentifiers.h> 中查看，主要是针对电话、carplay 等开放的 API。
    // * options 通知选项 枚举类型 也是为了支持 carplay
    UNNotificationCategory *notificationCategory = [UNNotificationCategory categoryWithIdentifier:@"Dely_locationCategory" actions:@[lookAction, joinAction, cancelAction] intentIdentifiers:@[] options:UNNotificationCategoryOptionCustomDismissAction];
    
    // 将 category 添加到通知中心
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    [center setNotificationCategories:[NSSet setWithObject:notificationCategory]];
}

+ (void)addNotificationAction2{
    
    // 创建 UNTextInputNotificationAction 比 UNNotificationAction 多了两个参数
    // * buttonTitle 输入框右边的按钮标题
    // * placeholder 输入框占位符
    UNTextInputNotificationAction *inputAction = [UNTextInputNotificationAction actionWithIdentifier:@"action.input" title:@"输入" options:UNNotificationActionOptionForeground textInputButtonTitle:@"发送" textInputPlaceholder:@"tell me loudly"];
    // 注册 category
    UNNotificationCategory *notificationCategory = [UNNotificationCategory categoryWithIdentifier:@"Dely_locationCategory" actions:@[inputAction] intentIdentifiers:@[] options:UNNotificationCategoryOptionCustomDismissAction];
    
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    [center setNotificationCategories:[NSSet setWithObject:notificationCategory]];

}

@end
