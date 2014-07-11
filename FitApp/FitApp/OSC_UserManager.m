//
//  OSC_UserManager.m
//  FitApp
//
//  Created by MAC-04 on 10/07/2014.
//  Copyright (c) 2014 MAC-04. All rights reserved.
//

#import "OSC_UserManager.h"
#import <Parse/Parse.h>


@implementation OSC_UserManager

//************Get User By ID ****************

-(PFUser*)getUserById:(NSString*)iduser{
    
    //Create an error object
    OSC_Error *e = [[OSC_Error alloc] init];
    e.error = FALSE;
    
    //Get the user
    PFUser *user = [PFUser new];
    PFQuery *query = [PFQuery queryWithClassName:@"User"];
    [query getObjectInBackgroundWithId:iduser block:^(PFObject *user, NSError *error) {
        e.error = TRUE;
        e.message = error.description;
    }];
    
    return user;
}

//************ Add User ****************

-(OSC_Error*)saveUser:(PFUser*) user{
    
    //Create an error object
    OSC_Error *error = [[OSC_Error alloc] init];
    error.error = FALSE;

    @try{
        
    //Save user
        [user signUpInBackground];
    }
    @catch (NSException *e){
    
    //Catch the error
        error.error = TRUE;
        error.message = e.description;
    }
    
    
    return error;
    
}

//************ Update User ****************

-(OSC_Error*)updateUser:(PFUser*) user{
    
    //Create an error object
    OSC_Error *error = [[OSC_Error alloc] init];
    error.error = FALSE;
    
        @try{
        
        //Update user
        [user saveInBackground];
    }
    @catch (NSException *e){
        
        //Catch the error
        error.error = TRUE;
        error.message = e.description;
    }
    
    
    return error;
    
}

//************ Delete User ****************

-(OSC_Error*)deleteUser:(NSString*) iduser{
    
    PFUser *u = [[PFUser alloc] init];
    u = [self getUserById:iduser];
    
    //u.objectId = iduser;
                 
    //Create an error object
    OSC_Error *error = [[OSC_Error alloc] init];
    error.error = FALSE;
                 
    @try{
                     
    //Update user
        [u deleteInBackground];
    }
    @catch (NSException *e){
                     
    //Catch the error
        error.error = TRUE;
        error.message = e.description;
    }
                 
    return error;

}


@end
