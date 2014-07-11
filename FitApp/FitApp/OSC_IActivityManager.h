//
//  OSC_IActivityManager.h
//  FitApp
//
//  Created by MAC-04 on 11/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OSC_Activity.h"

@protocol OSC_IActivityManager <NSObject>

-(OSC_Activity*)getActivityById:(NSString*)idactivity
                                (NSString*)nameactivity;
-(OSC_Error*)saveActivity:(OSC_Activity*)activity;
-(OSC_Error*)updateActivity:(PFUser*) activity;
-(OSC_Error*)deleteActivity:(NSString*) idactivity;


@end

@interface OSC_IActivityManager : NSObject

@end
