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

@property (weak, nonatomic) IBOutlet WKInterfaceSwitch *mySwitch;

@property (weak, nonatomic) IBOutlet WKInterfaceSlider *slider;

@end


@implementation InterfaceController

- (IBAction)isStart:(BOOL)value {
    
    if(value == YES){
        [self.mySwitch setTitle:@"停止计时"];
        [self.tmier start];
        return;
        
    }if(value == NO) {
        [self.mySwitch setTitle:@"开始计时"];
        [self.tmier stop];
        
        return;
        
    }
    
}

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
    NSLog(@"superView == %@",self.superclass);
    [self.mySwitch setOn:YES];
    [self.mySwitch setTitle:@"停止计时"];
    [self.tmier start];
    
    [NSTimer scheduledTimerWithTimeInterval:.2 target:self selector:@selector(heh) userInfo:nil repeats:YES];
    
}

- (void)heh
{
    static float i = 0;
    i++;
    if(i==10){
        i=0;
        [self.slider setValue:i];
        return;
    }
    [self.slider setValue:i];
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



