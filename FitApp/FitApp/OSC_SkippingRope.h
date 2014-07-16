//
//  OSC_SkippingRope.h
//  FitApp
//
//  Created by MAC-04 on 11/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>
#import <Parse/PFObject+Subclass.h>


@interface OSC_SkippingRope : PFObject <PFSubclassing>

@property (retain) NSString *id;
@property int *order;
@property Boolean *isDone;
@property (retain) NSString *doneDate;
@property (retain) NSString *idPlan;
@property int *numberJumps;



//****************** Constructor *****************

- (id)initWithOrder:(int*)aorder
          AndIsDone:(Boolean*)aisdone
        AndDoneDate:(NSString*)adonedate
          AndIdPlan:(NSString*)aidplan
     AndNumberJumps:(int*)ajumps;


//****************** Subclassing Methods *****************

+ (NSString *)parseClassName;

//****************** ToString *****************

- (NSString *)description;

@end
