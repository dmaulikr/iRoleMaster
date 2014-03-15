/*
 *  iRMTimeline.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * The purpose of this is to make a visual presentation of the timeline, and attach/create game events to it.
 *
 * The timeline should allow filtering so it only shows events that are tied to specific locations, objects, and/or persons.
 *
 * Each player character, named NPC, artifact object, and location should have a filtered timeline attached, the GM should always be able to see all timelines. The GM should also be able to query events on the timeline to see what objects (place/person/artifact) is connected to the event and what objects (persons/books) have the event recorded.
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
