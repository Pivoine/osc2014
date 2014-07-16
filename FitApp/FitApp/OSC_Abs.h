//
//  OSC_Abs.h
//  FitApp
//
//  Created by MAC-04 on 11/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>
#import <Parse/PFObject+Subclass.h>

@interface OSC_Abs : PFObject <PFSubclassing> 

@property NSString *id;
@property int order_activity;
@property BOOL isdone;
@property NSString *done_date;
@property NSString *id_plan;
@property int series;



//****************** Constructor *****************

- (id)initWithOrder:(int)aorder
          AndIsDone:(BOOL)aisdone
        AndDoneDate:(NSString*)adonedate
          AndIdPlan:(NSString*)aidplan
          AndSeries:(int)aseries;

//****************** Subclassing Methods *****************

+ (NSString *)parseClassName;


//****************** ToString *****************

- (NSString *)description;

@end

