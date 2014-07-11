//
//  OSC_Plan.h
//  FitApp
//
//  Created by MAC-04 on 10/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>


@interface OSC_Plan : PFObject <PFSubclassing>

@property (retain) NSString *id;
@property (retain) NSString *name;
@property (retain) NSString *date;
@property Boolean *isnotified;
@property int *period;
@property PFUser *user;



//****************** Constructor *****************

- (id)initWithName:(NSString*)aname
                AndDate:(NSString*)adate
                AndIsNotified:(Boolean*)aisnotified
                AndPeriod:(int*)aperiod
                AndUser:(PFUser*)auser;

//****************** Subclassing Methods *****************

+ (NSString *)parseClassName;


@end
