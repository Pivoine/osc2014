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
#import "OSC_Error.h"



@interface osc_ViewController ()

@end

@implementation osc_ViewController

@synthesize usermanager,planmanager,activitymanager ,info, plan;

- (void)viewDidLoad
{
    [super viewDidLoad];
//	// Do any additional setup after loading the view, typically from a nib.
//    
    PFUser *u = [[PFUser alloc] init];
    OSC_Plan *p = [OSC_Plan object];
//    
//    u = [self.usermanager getUserById:@"rUuSLQowMI"];
//    NSString *a = u.username;
//    
//    self.info.text = a;
//    
//    NSLog(@"%@", a);
    
//    
//    [PFUser logInWithUsername:@"Mokrani" password:@"azerty"];
//    PFUser *user = [PFUser currentUser];
//    
//    
//    NSString *a=  user [@"height"];
//     NSLog(@"%@", a);
    
//
   
    //Add a user
//    u.username = @"Omar";
//    u.password = @"omar";
//    u.email = @"omar@gmail.com";
//    
    usermanager = [[OSC_UserManager alloc] init];
    
    
    //Add a plan
    p.name = @"Morning routine";
    p.date = @"Today";
    p.isnotified = true;
    p.period = 45;
    //p.user = u;
    
    planmanager = [[OSC_PlanManager alloc] init];
   
    
    
    //Get a plan
    
//    @try {
//        
//        plan = [OSC_Plan object];
//        dispatch_queue_t myQueue = dispatch_queue_create("My Queue",NULL);
//        dispatch_async(myQueue, ^{
//            
//            plan =[planmanager getPlanById:@"bnKuz6aAdj"];
//            
//            dispatch_async(dispatch_get_main_queue(), ^{
//                self.info.text = plan.name;
//                
//            });
//        });
//        
//        
//
//    }
//    @catch (NSException *exception) {
//        self.info.text = exception.description;
//        
//        
//    }

    
    //Add a plan
//    OSC_Plan *pl = [[OSC_Plan alloc] init];
//    pl.name = @"myplan";
//    pl.date = @"lkhkh";
//    pl.isnotified = TRUE;
//    pl.period = 40;
//    
//    [planmanager savePlan:pl];
    
    
    
    //Update a plan
//    p.name = @"Morniiiiiiiing";
//    [planmanager updatePlan:p];
    
    //Delete a plan
    //[planmanager deletePlan:@"T3awDFbFeL"];
    
    

    
    //Add an activity
//    OSC_Abs *abs = [OSC_Abs object];
//    abs.order_activity = 2;
//    abs.isdone = FALSE;
//    abs.done_date = @"jzej";
//    
//    activitymanager = [[OSC_ActivityManager alloc] init];
//    
//    @try {
//    NSLog(@"Saving Activity");
//    [activitymanager saveActivity:abs];
//    
//    }
//    @catch (NSException *exception) {
//        NSLog(@"Error Activity saving");
//        self.info.text = exception.description;
//        
//        
//    }
//    
    
    
    //Get Current user
    @try {
        u = [usermanager getcurrentUser];
        NSLog(@"In get !");
    }
    @catch (NSException *ex) {
        self.info.text = ex.description;
        NSLog(@"In catch !");

    }

    NSLog(u.username);

    self.info.text = u.username;
    

    
    
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
