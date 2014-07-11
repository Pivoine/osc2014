//
//  OSC_Pushups.m
//  FitApp
//
//  Created by MAC-04 on 11/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import "OSC_Pushups.h"

@implementation OSC_Pushups

@dynamic id, order, isDone, doneDate, idPlan, series;



//****************** Constructor *****************

- (id)initWithOrder:(int*)aorder
AndIsDone:(Boolean*)aisdone
AndDoneDate:(NSString*)adonedate
AndIdPlan:(NSString*)aidplan
AndSeries:(NSMutableArray*)aseries{
    
    self.order = aorder;
    self.isDone = aisdone;
    self.doneDate = adonedate;
    self.idPlan = aidplan;
    self.series = aseries;
    
    return self;
}

//****************** Subclassing Methods *****************

+ (NSString *)parseClassName{
    return @"OSC_Pushups";
}

@end
