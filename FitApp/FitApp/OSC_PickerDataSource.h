//
//  OSC_PickerDataSource.h
//  FitApp
//
//  Created by MAC-04 on 17/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "strings.h"


@interface OSC_PickerDataSource : NSObject <UIPickerViewDataSource,UIPickerViewDelegate>

@property NSArray *workouts;
@property UILabel *selected;

-(id)initWithWorkouts:(NSArray*)aworkouts
             AndLabel:(UILabel*)label;






@end
