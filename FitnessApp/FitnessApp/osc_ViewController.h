//
//  osc_ViewController.h
//  FitnessApp
//
//  Created by MAC-04 on 08/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>



@interface osc_ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *accX;
@property (strong, nonatomic) IBOutlet UILabel *accY;
@property (strong, nonatomic) IBOutlet UILabel *accZ;

@property (strong, nonatomic) IBOutlet UILabel *gravX;
@property (strong, nonatomic) IBOutlet UILabel *gravY;
@property (strong, nonatomic) IBOutlet UILabel *gravZ;




@property (strong, nonatomic) IBOutlet UILabel *StepsChange;

@property (strong, nonatomic) IBOutlet UILabel *LabelChange;

@property (strong, nonatomic) CMMotionManager *motionManager;

@end
