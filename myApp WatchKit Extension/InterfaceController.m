//
//  InterfaceController.m
//  myApp WatchKit Extension
//
//  Created by Harris Dong on 2014/11/24.
//  Copyright (c) 2014年 Harris Dong. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController
bool isHidden = YES;
@synthesize label;
@synthesize watchSwitch;
@synthesize button;

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        [label setText:@"myLabel"];
        
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

- (IBAction)OnSwitch:(id)sender
{
    isHidden = !isHidden;
    [label setHidden:isHidden];
}

- (IBAction)OnPressed:(id)sender
{
    
}

- (NSString *)actionForUserActivity:(NSDictionary *)userActivity context:(__autoreleasing id *)context
{
    [button setTitle:[userActivity valueForKey:@"key"]];
    
    return [userActivity valueForKey:@"key"];
}

@end



