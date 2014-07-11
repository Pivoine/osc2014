//
//  OSC_UserManager.h
//  FitApp
//
//  Created by MAC-04 on 10/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>
#import "OSC_IUserManager.h"
#import "OSC_Error.h"

@interface OSC_UserManager : NSObject <OSC_IUserManager>

-(PFUser*)getUserById:(NSString*)iduser;
-(OSC_Error*)saveUser:(PFUser*) user;
-(OSC_Error*)updateUser:(PFUser*) user;
-(OSC_Error*)deleteUser:(NSString*) iduser;


@end
