//
//  NotificationController.h
//  myApp WatchKit Extension
//
//  Created by Harris Dong on 2014/11/24.
//  Copyright (c) 2014年 Harris Dong. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface NotificationController : WKUserNotificationInterfaceController

@property(weak) IBOutlet WKInterfaceLabel* label;
@property(weak) IBOutlet WKInterfaceTable* myTable;

@end
