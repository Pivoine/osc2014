//
//  osc_ViewController.m
//  FitnessApp
//
//  Created by MAC-04 on 08/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import "osc_ViewController.h"
#import "osc_Toast.h"

@interface osc_ViewController ()

@end

@implementation osc_ViewController
int i = 0;

float gravityX = 0;
float gravityY = 0;
float gravityZ = 0;

float alpha = 0.8;

@synthesize accX;
@synthesize accY;
@synthesize accZ;

@synthesize gravX;
@synthesize gravY;
@synthesize gravZ;


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
    
    if (!self.motionManager.isDeviceMotionAvailable) {
         [osc_Toast showToastInParentView:self.view withText:@"Device Motion unavailable" withDuaration:5.0];
    
    }
    self.motionManager.deviceMotionUpdateInterval = 0.5;
    self.motionManager.accelerometerUpdateInterval = 0.5;
    
    [self.motionManager startDeviceMotionUpdatesUsingReferenceFrame: CMAttitudeReferenceFrameXArbitraryCorrectedZVertical];
   
    
    [self.motionManager startAccelerometerUpdatesToQueue:[NSOperationQueue currentQueue]
                                             withHandler:^(CMAccelerometerData  *accelerometerData, NSError *error) {
                                                 [self outputAccelertionData:accelerometerData.acceleration];
                                                 if(error){
                                                     
                                                     NSLog(@"%@", error);
                                                 }
                                             }];

    

    
    
}

//************
-(void)outputAccelertionData:(CMAcceleration)acceleration
{

    
    self.accX.text = [NSString stringWithFormat:@" %.20f",acceleration.x];
    self.accY.text = [NSString stringWithFormat:@" %.20f",acceleration.y];
    self.accZ.text = [NSString stringWithFormat:@" %.20f",acceleration.z];
    
    gravityX = alpha * gravityX + (1 - alpha) * acceleration.x;
    gravityY = alpha * gravityY + (1 - alpha) * acceleration.y;
    gravityZ = alpha * gravityZ + (1 - alpha) * acceleration.z;
    
    self.gravX.text = [NSString stringWithFormat:@" %.20f",gravityX];
    self.gravY.text = [NSString stringWithFormat:@" %.20f",gravityY];
    self.gravZ.text = [NSString stringWithFormat:@" %.20f",gravityZ];

    
    
    
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
