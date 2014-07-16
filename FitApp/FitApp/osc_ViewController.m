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



@interface osc_ViewController ()

@end

@implementation osc_ViewController

@synthesize usermanager,planmanager,activitymanager ,statsmanager , time, i, workouts, workoutPicker;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    i = 0;
//	// Do any additional setup after loading the view, typically from a nib.
    UIDevice *device = [UIDevice currentDevice];
    device.proximityMonitoringEnabled = YES;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(proximityChanged:) name:@"UIDeviceProximityStateDidChangeNotification" object:device];
    
    
    
  
}


- (void)proximityChanged:(NSNotification *)notification {
	UIDevice *device = [notification object];
    if (device.proximityState == 1) {
        i = i + 1;
        
    } else {
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
