//
//  OSC_Statistics.h
//  FitApp
//
//  Created by MAC-04 on 10/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface OSC_Statistics : PFObject <PFSubclassing>

@property (retain) NSString *id;
@property (retain) NSString *date;
@property double *distance;
@property double *speed;
@property double *calories;
@property (retain) NSString *idUser;



//****************** Constructor *****************

-(id)initWithDate:(NSString*)adate
                AndDistance:(double*)adistance
                AndSpeed:(double*)aspeed
                AndCalories:(double*)acalories
                AndIdUser:(NSString*)aiduser;

//****************** Subclassing Methods *****************

+ (NSString *)parseClassName;

@end
