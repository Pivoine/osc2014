//
//  OSC_StatisticsManager.h
//  FitApp
//
//  Created by MAC-04 on 11/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OSC_Statistics.h"
#import "OSC_Error.h"

@interface OSC_StatisticsManager : NSObject

-(OSC_Statistics*)getStatistics:(NSString*)iduser;
-(OSC_Error*)saveStatistics:(OSC_Statistics*) statistics;

@end
