//
//  InterfaceController.m
//  AppWatchDemo WatchKit Extension
//
//  Created by zezefamily on 15/6/23.
//  Copyright (c) 2015年 zezefamily. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceTimer *tmier;


@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
    NSLog(@"superView == %@",self.superclass);
    [self.tmier start];
    
}


- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    // as -viewWillApppear
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    // as  -viewDidDisappear
    [super didDeactivate];
}

@end



