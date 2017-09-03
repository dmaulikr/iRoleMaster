/*
 *  iRMTimeline.h
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
 * Events should automatically be added to the timeline when they are created. That way the GM will easilly get a view of all events in his campaign. Players will have their timeline displayed through the journal.
 *
 * For information available to the player, see iRMJournal
 */

#import <Foundation/Foundation.h>
#import "iRMEvent.h"
#import "iRMCalendar.h"

@interface iRMTimeline : NSObject

@property NSMutableSet *timelineEvent;
@property iRMCalendar *timelineCalendar;

- (void) addEvent:(iRMEvent *)event;

@end
