//
//  OSC_Statistics.m
//  FitApp
//
//  Created by MAC-04 on 10/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import "OSC_Statistics.h"
#import <Parse/PFObject+Subclass.h>

@implementation OSC_Statistics

@dynamic id, date, distance, speed, calories, idUser;



//****************** Constructor *****************

-(id)initWithDate:(NSString*)adate
      AndDistance:(double*)adistance
         AndSpeed:(double*)aspeed
      AndCalories:(double*)acalories
        AndIdUser:(NSString*)aiduser{
    
    self.date = adate;
    self.distance = adistance;
    self.speed = aspeed;
    self.calories = acalories;
    self.idUser = aiduser;
    return self;
}


//****************** Subclassing Methods *****************

+ (NSString *)parseClassName{
    return @"Statistics";
}

@end
