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
#import "OSC_ActivityManager.h"
#import "OSC_Abs.h"
#import <Parse/Parse.h>

@interface osc_ViewController : UIViewController

@property OSC_UserManager *usermanager;
@property OSC_PlanManager *planmanager;
@property OSC_ActivityManager *activitymanager;
@property (strong, nonatomic) IBOutlet UILabel *info;
@property OSC_Plan *plan;



@end
