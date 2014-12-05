//
//  GlanceController.m
//  myApp WatchKit Extension
//
//  Created by Harris Dong on 2014/11/24.
//  Copyright (c) 2014年 Harris Dong. All rights reserved.
//

#import "GlanceController.h"


@interface GlanceController()

@end


@implementation GlanceController

@synthesize label;


- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        [label setText:@"myGlance"];
    }
    return self;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
    NSDictionary* dict = [NSDictionary dictionaryWithObject:@"obj Received from glance" forKey:@"key"];

    [self updateUserActivity:@"hello" userInfo:dict];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end



