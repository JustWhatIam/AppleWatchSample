//
//  NotificationController.m
//  myApp WatchKit Extension
//
//  Created by Harris Dong on 2014/11/24.
//  Copyright (c) 2014年 Harris Dong. All rights reserved.
//

#import "NotificationController.h"
#import "FirstRow.h"

@interface NotificationController()

@end


@implementation NotificationController

@synthesize label;
@synthesize myTable;

- (instancetype)init {
    self = [super init];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ init", self);
        [label setText:@"myNotification"];

    }
    
    return self;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}


- (void)didReceiveLocalNotification:(UILocalNotification *)localNotification withCompletion:(void (^)(WKUserNotificationInterfaceType))completionHandler {
    // This method is called when a local notification needs to be presented.
    // Implement it if you use a dynamic notification interface.
    // Populate your dynamic notification inteface as quickly as possible.
    //
    // After populating your dynamic notification interface call the completion block.
    completionHandler(WKUserNotificationInterfaceTypeCustom);
}



- (void)didReceiveRemoteNotification:(NSDictionary *)remoteNotification withCompletion:(void (^)(WKUserNotificationInterfaceType))completionHandler {
    // This method is called when a remote notification needs to be presented.
    // Implement it if you use a dynamic notification interface.
    // Populate your dynamic notification inteface as quickly as possible.
    //
    // After populating your dynamic notification interface call the completion block.
    [myTable setNumberOfRows:3 withRowType:@"FirstRowID"];
    FirstRow* row = [myTable rowControllerAtIndex:1];
    [row.label setText:@"Second Row"];
    
    completionHandler(WKUserNotificationInterfaceTypeCustom);
}

- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex
{
    FirstRow* row = [table rowControllerAtIndex:rowIndex];
    [row.label setText:@"Row Tapped"];

}

- (IBAction)myTableAction:(NSInteger)rowIndex
{
    if(rowIndex != 1) {
        FirstRow* row = [myTable rowControllerAtIndex:rowIndex];
        [row.label setText:@"Row Tapped"];
    }

}


@end



