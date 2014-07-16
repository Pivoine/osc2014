//
//  OSC_Footing.h
//  FitApp
//
//  Created by MAC-04 on 11/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>
#import <Parse/PFObject+Subclass.h>

@interface OSC_Footing : PFObject <PFSubclassing>

@property (retain) NSString *id;
@property int *order;
@property Boolean *isDone;
@property (retain) NSString *doneDate;
@property (retain) NSString *idPlan;
@property double *distance;
@property NSString *startLocation;
@property NSString *endLocation;



//****************** Constructor *****************

- (id)initWithOrder:(int*)aorder
          AndIsDone:(Boolean*)aisdone
        AndDoneDate:(NSString*)adonedate
          AndIdPlan:(NSString*)aidplan
        AndDistance:(double*)adistance
   AndStartLocation:(NSString*)astart
     AndEndLocation:(NSString*)aend;

//****************** Subclassing Methods *****************

+ (NSString *)parseClassName;

//****************** ToString *****************

- (NSString *)description;

@end

