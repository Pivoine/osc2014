//
//  OSC_ActivityManager.m
//  FitApp
//
//  Created by MAC-04 on 11/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import "OSC_ActivityManager.h"
#import "OSC_Activity.h"

@implementation OSC_ActivityManager

-(OSC_Activity*)getActivityById:(NSString*)idactivity
                            AndName:(NSString *)nameactivity{

    //Create an error object
    OSC_Error *e = [[OSC_Error alloc] init];
    e.error = FALSE;
    
    //Get the activity
    OSC_Activity *activity = [OSC_Activity new];
    PFQuery *query = [PFQuery queryWithClassName:nameactivity];
    [query getObjectInBackgroundWithId:idplan block:^(PFObject *plan, NSError *error) {
        e.error = TRUE;
        e.message = error.description;
    }];
    
    return plan;
}
-(OSC_Error*)saveActivity:(OSC_Activity*)activity{}
-(OSC_Error*)updateActivity:(PFUser*) activity{}
-(OSC_Error*)deleteActivity:(NSString*) idactivity{}

@end
