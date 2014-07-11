//
//  OSC_PlanManager.h
//  FitApp
//
//  Created by MAC-04 on 11/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OSC_IPlanManager.h"
#import "OSC_Error.h"

@interface OSC_PlanManager : NSObject <OSC_IPlanManager>

-(OSC_Plan*)getPlanById:(NSString*)idplan;
-(OSC_Error*)savePlan:(OSC_Plan*)plan;
-(OSC_Error*)updatePlan:(PFUser*) plan;
-(OSC_Error*)deletePlan:(NSString*) idplan;

@end
