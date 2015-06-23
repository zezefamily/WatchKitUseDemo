//
//  ThirdController.m
//  AppWatchDemo
//
//  Created by zezefamily on 15/6/23.
//  Copyright (c) 2015年 zezefamily. All rights reserved.
//

#import "ThirdController.h"
#import "RowController.h"
@interface ThirdController ()

@property (weak, nonatomic) IBOutlet WKInterfaceTable *Mytable;


@end

@implementation ThirdController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    NSArray *arr = @[@"苹",@"果",@"表",@"开",@"发",@"初",@"体",@"验"];
    [self.Mytable setNumberOfRows:arr.count withRowType:@"TEST"];
    
    for(NSInteger i = 0;i<arr.count;i++){
        
        // 相当于UITableView的cell,不过该类继承与NSObject
        RowController *row = [self.Mytable rowControllerAtIndex:i];
        [row.titleLabel setText:arr[i]];
        
    }
    
}



- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



