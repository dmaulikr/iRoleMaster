/*
 *  iRMLog.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 *
 */

#import "iRMLog.h"
#import "iRMCharacter.h"

@implementation iRMLog

- (id) init
{
    self = [super init];
    
    if (self) {
        _logRealDate = [NSDate date];
    }
    return self;
}

- (id) broadcast
{
    /*
     * This function has the purpose to transmit this object to a notification center. The Log object doesn't discriminate or prioritize observers.
     */
    return self; //sending my content to a notification center
}

@end
