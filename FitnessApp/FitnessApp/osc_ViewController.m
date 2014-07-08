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
    
    
    //Accelerometer
    self.motionManager = [[CMMotionManager alloc] init];
    self.motionManager.accelerometerUpdateInterval = .2;
    self.motionManager.gyroUpdateInterval = .2;
    
    [self.motionManager startAccelerometerUpdatesToQueue:[NSOperationQueue currentQueue]
                                             withHandler:^(CMAccelerometerData  *accelerometerData, NSError *error) {
                                                 [self outputAccelertionData:accelerometerData.acceleration];
                                                 if(error){
                                                     
                                                     NSLog(@"%@", error);
                                                 }
                                             }];
    
    [self.motionManager startGyroUpdatesToQueue:[NSOperationQueue currentQueue]
                                    withHandler:^(CMGyroData *gyroData, NSError *error) {
                                        [self outputRotationData:gyroData.rotationRate];
                                    }];
    
    
    
}

//************
-(void)outputAccelertionData:(CMAcceleration)acceleration
{
    
    self.StepsChange.text = [NSString stringWithFormat:@" %.2fg",acceleration.x];
    
    
//    self.accX.text = [NSString stringWithFormat:@" %.2fg",acceleration.x];
//    if(fabs(acceleration.x) > fabs(currentMaxAccelX))
//    {
//        currentMaxAccelX = acceleration.x;
//    }
//    self.accY.text = [NSString stringWithFormat:@" %.2fg",acceleration.y];
//    if(fabs(acceleration.y) > fabs(currentMaxAccelY))
//    {
//        currentMaxAccelY = acceleration.y;
//    }
//    self.accZ.text = [NSString stringWithFormat:@" %.2fg",acceleration.z];
//    if(fabs(acceleration.z) > fabs(currentMaxAccelZ))
//    {
//        currentMaxAccelZ = acceleration.z;
//    }
//    
//    self.maxAccX.text = [NSString stringWithFormat:@" %.2f",currentMaxAccelX];
//    self.maxAccY.text = [NSString stringWithFormat:@" %.2f",currentMaxAccelY];
//    self.maxAccZ.text = [NSString stringWithFormat:@" %.2f",currentMaxAccelZ];
    
    
}
-(void)outputRotationData:(CMRotationRate)rotation
{
    
//    self.rotX.text = [NSString stringWithFormat:@" %.2fr/s",rotation.x];
//    if(fabs(rotation.x) > fabs(currentMaxRotX))
//    {
//        currentMaxRotX = rotation.x;
//    }
//    self.rotY.text = [NSString stringWithFormat:@" %.2fr/s",rotation.y];
//    if(fabs(rotation.y) > fabs(currentMaxRotY))
//    {
//        currentMaxRotY = rotation.y;
//    }
//    self.rotZ.text = [NSString stringWithFormat:@" %.2fr/s",rotation.z];
//    if(fabs(rotation.z) > fabs(currentMaxRotZ))
//    {
//        currentMaxRotZ = rotation.z;
    }

//************




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)sensorStateChange:(NSNotification *)notification
{
    UIDevice *device = [notification object];
    if (device.proximityState == 1) {
        
        NSLog(@"Device is close to user.");
        i = i + 1 ;
        self.LabelChange.text = [NSString stringWithFormat:@"%i", i];
    }
    else{
        NSLog(@"Device is ~not~ closer to user.");
        i = i - 1 ;
        self.LabelChange.text = [NSString stringWithFormat:@"%i", i];
    }
}

@end
