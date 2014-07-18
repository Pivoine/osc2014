//
//  OSC_PickerDataSource.m
//  FitApp
//
//  Created by MAC-04 on 17/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import "OSC_PickerDataSource.h"
#import "strings.h"

@implementation OSC_PickerDataSource

@synthesize workouts, selected;


-(id)initWithWorkouts:(NSArray*)aworkouts
             AndLabel:(UILabel*)label{
    
    self.selected = label;
    self.workouts = aworkouts;
    return self;

}

// The number of columns of data
- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (int)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return workouts.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return workouts[row];
}




// ************** Picker View Delegate
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row
      inComponent:(NSInteger)component
{
    selected.text = workouts[row];
}


-(UIView *) pickerView: (UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    
    
    
    CGRect rect = CGRectMake(0, 0, 70, 30);
    UILabel * label = [[UILabel alloc]initWithFrame:rect];
    label.text = workouts[row];
    label.opaque = NO;
    label.textAlignment = UITextAlignmentCenter;
    label.backgroundColor = [UIColor clearColor];
    //label.clipsToBounds = YES;
    
    //here you can play with fonts
    //[pickerLabel setFont:[UIFont fontWithName:@"Times New Roman" size:14.0]];
 
    label.transform = CGAffineTransformRotate(label.transform, M_PI/2);
    component = @23;
    
    return label;
}




@end
