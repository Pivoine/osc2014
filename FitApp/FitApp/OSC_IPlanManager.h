//
//  OSC_IPlanManager.h
//  FitApp
//
//  Created by MAC-04 on 11/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OSC_Plan.h"
#import "OSC_Error"
#import <Parse/Parse.h>

@protocol OSC_IPlanManager <NSObject>

-(OSC_Plan*)getPlanById:(NSString*)idplan;
-(OSC_Error*)savePlan:(OSC_Plan*)plan;
-(OSC_Error*)updatePlan:(PFUser*) plan;
-(OSC_Error*)deletePlan:(NSString*) idplan;


@end

@interface OSC_IPlanManager : NSObject

@end