//
//  osc_ViewController.m
//  FitApp
//
//  Created by MAC-04 on 10/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import "osc_ViewController.h"
#import "OSC_UserManager.h"
#import <Parse/Parse.h>
#import "strings.h"



@interface osc_ViewController ()

@end

@implementation osc_ViewController

@synthesize usermanager,planmanager,activitymanager ,statsmanager, workoutCounter, repeat;

@synthesize  workouts, chosenWorkout, workoutScrollView, workoutsPng, chosenWorkoutPng;

@synthesize startTimeInterval, stopTimeInterval, timeHour, timeMinute, timeSecond;

@synthesize chosenSection, scrollSection;



int hours, minutes, seconds;
int secondsLeft;
bool isShown = true;


- (void)viewDidLoad
{
    
    
    [super viewDidLoad];
 
// ***** INITIALIZE ARRAYS
    
    workouts = @[abs,cycling,footing,pullups,pushups,skippingRope];
    workoutsPng = @[@"abs.png", @"cycling", @"footing", @"pullups", @"pushups", @"skippingrope"];
    
    
    
// ***** INITIALIZE SENSORS
    
    UIDevice *device = [UIDevice currentDevice];
    device.proximityMonitoringEnabled = YES;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(proximityChanged:) name:@"UIDeviceProximityStateDidChangeNotification" object:device];
    
    
// ***** INITIALIZE SCROLL VIEW
    
    NSInteger numberWorkouts = 6;
    
    
    workoutScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, self. view.frame.size.height/3, self.view.frame.size.width, workoutScrollView.frame.size.height)];
    [workoutScrollView setDelegate:self];
    
    
    for (int j = 0; j < numberWorkouts; j++) {
        
        CGFloat xOrigin = j * workoutScrollView.frame.size.width/4;
        
        UIButton *btnTwo = [UIButton buttonWithType:UIButtonTypeCustom];
        btnTwo.frame = CGRectMake(xOrigin, 0, 50, 50);
        [btnTwo setTitle:workouts[j] forState:UIControlStateNormal];
        [btnTwo setTag:j];
        [btnTwo addTarget:self action:@selector(goToOne:) forControlEvents:UIControlEventTouchUpInside];
        [workoutScrollView addSubview:btnTwo];
        
        
        UIImage *btnImage = [UIImage imageNamed:workoutsPng[j]];
        
        [btnTwo setImage:btnImage forState:UIControlStateNormal];
        
        
        [self.view addSubview:workoutScrollView];
        CGSize scrollableSize = CGSizeMake(self.view.frame.size.width, workoutScrollView.contentSize.height);
        [workoutScrollView setContentSize:scrollableSize];
        
    }
    
    
    workoutScrollView.contentSize = CGSizeMake(80 * numberWorkouts, workoutScrollView.frame.size.height);
    
    
    
// ***** INITIALIZE WORKOUT COUNTER
    
    workoutCounter = 0;
    

    
}

//********************SCROLL VIEW

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSLog(@"Did end decelerating");
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"Did scroll");
    //[scrollView setContentOffset: CGPointMake(0, scrollView.contentOffset.x)];
}
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView
                 willDecelerate:(BOOL)decelerate{
    NSLog(@"Did end dragging");
    
}
-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    NSLog(@"Did begin decelerating");
}
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"Did begin dragging");
}

- (IBAction)goToOne:(id)sender{

    NSLog(@" image tapped !");
    
    UIButton *resultButton = (UIButton *)sender;
    self.chosenWorkout.text = resultButton.currentTitle;
    NSInteger j = [resultButton tag];
    UIImage *btnImage = [UIImage imageNamed:workoutsPng[j]];
    [self.chosenWorkoutPng setImage:btnImage];
    
}
//*********************

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//************* PROXIMITY SENSOR

- (void)proximityChanged:(NSNotification *)notification {
	UIDevice *device = [notification object];
    if (device.proximityState == 1) {
        workoutCounter = workoutCounter + 1;
        self.repeat.text = [NSString stringWithFormat:@"%d", workoutCounter];
    } else {
        
    }
}

//*************** Return Key

-(IBAction)textFieldReturn:(id)sender {
    [sender resignFirstResponder];
}

//*************** STOPWATCH

-(void) clockTime {
    seconds++;
    
    if (seconds == 60)
    {
        NSLog(@"%i", seconds);
        seconds = 0;
        minutes++;
        
        if (minutes == 60)
        {
            minutes = 0;
            hours++;
        }
    }
    
    timeSecond.text = [NSString stringWithFormat:@"%02i:%02i:%02i", hours, minutes, seconds];
    
}

- (IBAction)stopWorkout:(id)sender {
    NSLog(@"Stopped");
    [timer invalidate];
    timer = nil;
}

- (IBAction)startWorkOut:(id)sender {
    NSLog(@"Started");
    
    if (timer == nil)
    {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0/1.0
                                                 target:self
                                               selector:@selector(clockTime)
                                               userInfo:nil
                                                repeats:YES];
        startTimeInterval = [NSDate date];
        
        
    }
    else
    {
        [timer invalidate];
        timer = nil;
        stopTimeInterval = [NSDate date];
        
        NSTimeInterval timeInterval = [stopTimeInterval timeIntervalSinceDate:startTimeInterval];
        totalTime += timeInterval;
        
        
        startButtonPressed = YES;
        
    }

   
}


@end
