/*
 *  iRMTimeline.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 */

#import "iRMTimeline.h"
#import "iRMEvent.h"

@implementation iRMTimeline

- (id) init
{
    self = [super init];
    
    if (self) {
        
    }
    return self;
}

- (void) addEvent:(iRMEvent *)event
{
    [_timelineEvent addObject:event];
}

@end
