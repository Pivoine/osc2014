//
//  osc_Toast.h
//  FitnessApp
//
//  Created by MAC-04 on 09/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface osc_Toast : UITableViewCell

@property (strong, nonatomic) UILabel *textLabel;
+ (void)showToastInParentView: (UIView *)parentView withText:(NSString *)text withDuaration:(float)duration;


@end
