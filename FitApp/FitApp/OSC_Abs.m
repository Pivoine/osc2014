//
//  OSC_Abs.m
//  FitApp
//
//  Created by MAC-04 on 11/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import "OSC_Abs.h"

@implementation OSC_Abs

@dynamic id, order_activity, isdone, done_date, id_plan, series;



//****************** Constructor *****************

- (id)initWithOrder:(int*)aorder
          AndIsDone:(Boolean*)aisdone
        AndDoneDate:(NSString*)adonedate
          AndIdPlan:(NSString*)aidplan
          AndSeries:(int*)aseries{
    
    self.order_activity = aorder;
    self.isdone = aisdone;
    self.done_date = adonedate;
    self.id_plan = aidplan;
    self.series = aseries;
    
    return self;
}

//****************** Subclassing Methods *****************

+ (NSString *)parseClassName{
    return @"OSC_Abs";
}

@end

