/*
 *  iRMCalendar.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * The purpose of this is to create a calendar-like presentation to be used within a game, where dates relates to the game-time dates. The objective is to use NSDate objects as representation of instance of time within the game environemnt. The game configuration should enable to create a calendar format (i.e. months/year, day/month, leap-years, begining and end of time era's, etc).
 *
 * This object should work as a regular calendar in all aspects, though it should allow for the GM to define all aspects of it.
 *
 */

#import "iRMCalendar.h"

@implementation iRMCalendar

- (id) init
{
    self = [super init];
    
    if (self) {
        
    }
    return self;
}

@end
