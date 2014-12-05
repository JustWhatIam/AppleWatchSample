//
//  MyWatchAppController.m
//  myApp
//
//  Created by Harris Dong on 2014/11/26.
//  Copyright (c) 2014年 Harris Dong. All rights reserved.
//

#import "MyWatchAppController.h"

@implementation MyWatchAppController

@synthesize table;

- (instancetype)init {
    self = [super init];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ init", self);
        
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

-(IBAction)OnPressed:(id)sender
{
//    [self addMenuItemWithImageNamed:@"bird" title:@"Hello" action:nil];
}



@end
