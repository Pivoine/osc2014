//
//  OSC_PlanManager.m
//  FitApp
//
//  Created by MAC-04 on 11/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import "OSC_PlanManager.h"
#import "OSC_Error.h"


@implementation OSC_PlanManager


//************Get Plan By ID ****************

-(OSC_Plan*)getPlanById:(NSString*)idplan{
    
    //Create an error object
    OSC_Error *e = [[OSC_Error alloc] init];
    e.error = FALSE;
    
    //Get the plan
    OSC_Plan *plan = [OSC_Plan new];
    PFQuery *query = [PFQuery queryWithClassName:@"Plan"];
    [query getObjectInBackgroundWithId:idplan block:^(PFObject *plan, NSError *error) {
        e.error = TRUE;
        e.message = error.description;
    }];
    
    return plan;

}

//************ Add Plan ****************

-(OSC_Error*)savePlan:(OSC_Plan*)plan{
    
    //Create an error object
    OSC_Error *error = [[OSC_Error alloc] init];
    error.error = FALSE;
    
    
    @try{
    //Add the plan
        OSC_Plan *p = [OSC_Plan object];
        p.date = plan.date;
        p.name = plan.name;
        p.isnotified = plan.isnotified;
        p.period = plan.period;
        p.user.objectId = plan.user.objectId;
    }
    @catch(NSException *e){
        error.error = TRUE;
        error.message = e.description;
    }
    
    return error;

}

//************ Update Plan ****************

-(OSC_Error*)updatePlan:(PFUser*) plan{
    
    //Create an error object
    OSC_Error *error = [[OSC_Error alloc] init];
    error.error = FALSE;
    
    @try{
        
        //Update plan
        [plan saveInBackground];
    }
    @catch (NSException *e){
        
        //Catch the error
        error.error = TRUE;
        error.message = e.description;
    }
    
    
    return error;

}

//************ Delete Plan ****************

-(OSC_Error*)deletePlan:(NSString*) idplan{
    
    OSC_Plan *p = [[OSC_Plan alloc] init];
    p = [self getPlanById:idplan];
    
    //Create an error object
    OSC_Error *error = [[OSC_Error alloc] init];
    error.error = FALSE;
    
    @try{
        
        //Update user
        [p deleteInBackground];
    }
    @catch (NSException *e){
        
        //Catch the error
        error.error = TRUE;
        error.message = e.description;
    }
    
    return error;

    

}


@end

