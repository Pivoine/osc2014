//
//  osc_ViewController.h
//  FitApp
//
//  Created by MAC-04 on 10/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OSC_UserManager.h"
#import "OSC_PlanManager.h"
#import "OSC_StatisticsManager.h"
#import "OSC_ActivityManager.h"
#import "OSC_Abs.h"
#import <Parse/Parse.h>

#import "OSC_PickerDataSource.h"

@interface osc_ViewController : UIViewController <UIScrollViewDelegate>
{
    int seconds;
    int minutes;
    int hours;
    int laps;
    float totalTime;
    BOOL startButtonPressed;
    NSTimer *timer;
    NSDate *currentTimeInterval;
    NSDate *totalTimeInterval;
    NSDate *startTimeInterval;
    NSDate *stopTimeInterval;
}

//STOPWATCH
@property (strong, nonatomic) NSDate *startTimeInterval;
@property (strong, nonatomic) NSDate *stopTimeInterval;
@property (strong, nonatomic) IBOutlet UILabel *timeHour;
@property (strong, nonatomic) IBOutlet UILabel *timeMinute;
@property (strong, nonatomic) IBOutlet UILabel *timeSecond;

//BUTTONS
- (IBAction)stopWorkout:(id)sender;
- (IBAction)startWorkOut:(id)sender;

//IMAGES
@property (strong, nonatomic) IBOutlet UIImageView *chosenWorkoutPng;


@property (strong, nonatomic) IBOutlet UILabel *repeat;
@property (strong, nonatomic) IBOutlet UILabel *chosenWorkout;
@property NSArray *workouts;
@property NSArray *workoutsPng;

//MANAGERS
@property OSC_UserManager *usermanager;
@property OSC_PlanManager *planmanager;
@property OSC_StatisticsManager *statsmanager;
@property OSC_ActivityManager *activitymanager;

@property (strong, nonatomic) IBOutlet UIScrollView *workoutScrollView;

//VIEWS


@property (strong, nonatomic) IBOutlet UIView *chosenSection;
@property (strong, nonatomic) IBOutlet UIView *scrollSection;



@property int workoutCounter ;
















@end
