//
//  osc_ViewController.m
//  FitnessApp
//
//  Created by MAC-04 on 08/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import "osc_ViewController.h"

@interface osc_ViewController ()

@end

@implementation osc_ViewController
int i = 0;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Enabled monitoring of the sensor
    [[UIDevice currentDevice] setProximityMonitoringEnabled:YES];
    
    // Set up an observer for proximity changes
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(sensorStateChange:) name:@"UIDeviceProximityStateDidChangeNotification" object:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)sensorStateChange:(NSNotificationCenter *)notification
{
    if ([[UIDevice currentDevice] proximityState] == YES){
        
        NSLog(@"Device is close to user.");
        self.LabelChange.text = [NSString stringWithFormat:@"%i", i+1];
    }
    else{
        NSLog(@"Device is ~not~ closer to user.");
        self.LabelChange.text = [NSString stringWithFormat:@"%i", i-1];
    }
}

@end
