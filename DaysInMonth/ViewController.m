//
//  ViewController.m
//  DaysInMonth
//
//  Created by Victor  Adu on 5/5/14.
//  Copyright (c) 2014 Victor  Adu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSDate *today = [NSDate date];
    NSDateFormatter *formatter = [NSDateFormatter new];
    [formatter setDateFormat:@"d"];
    
    //Create date components in Calendar and set range.
    NSCalendar* calendar = [NSCalendar currentCalendar];
    NSDateComponents* dateComponents = [NSDateComponents new];
    [dateComponents setMonth:[[formatter stringFromDate:today] intValue]];
    NSRange range = [calendar rangeOfUnit:NSDayCalendarUnit
                                   inUnit:NSMonthCalendarUnit
                                  forDate:[calendar dateFromComponents:dateComponents]];
    
    int daysInMonth = range.length;
    daysInMonth = 28;
    
    if (daysInMonth <=29) {
            _myLabel.text = @"This month is February.";
        } else if (daysInMonth < 31) {
            _myLabel.text = @"This month is September, April, June, or November.";
        } else {
            _myLabel.text = @"It's January, March, July, August, October, or December.";
        }
    }
    

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
