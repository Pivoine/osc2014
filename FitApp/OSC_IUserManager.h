//
//  OSC_IUserManager.h
//  FitApp
//
//  Created by MAC-04 on 10/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OSC_Error.h"
#import <Parse/Parse.h>

@protocol OSC_IUserManager


-(void)saveUser:(PFUser*) user;
-(PFUser*)getcurrentUser;

@end

@interface OSC_IUserManager : NSObject

@end
