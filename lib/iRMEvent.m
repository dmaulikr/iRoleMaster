/*
 *  iRMEvent.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * The purpose with this is to make a event, that can either be used by the GM to keep track of what is going on at different locations or with different persons/objects, or as a record of what is known. Events are also used in the players journal along with handouts, as a sort of dated information, and a player can append his own notes to the event (GMs will have access to players notes, other players will only be able to see own notes. GMs can append information to each player notes as GM addendum)
 *
 */

#import "iRMEvent.h"
#import "iRMLiving.h"
#import "iRMLocation.h"
#import "iRMObject.h"
#import "iRMLog.h"

@implementation iRMEvent

- (id) init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void) setEventTitle:(NSString *)eventTitle {
    _eventTitle = [[NSString alloc] initWithString:eventTitle];
    iRMLog *newLog = [[iRMLog alloc] init];
    newLog.logDescription = [[NSString alloc] initWithFormat:@"Event created with title: %@", eventTitle];
}
- (void) addEventPerson:(iRMLiving *)person
{
    [_eventPersons addObject:person];
}
- (void) addEventPersonFromString:(NSString *)person
{
    [_eventPersons addObject:person];
}
- (void) addLocation:(iRMLocation *)location
{
    [_eventLocations addObject:location];
}
- (void) addItem:(iRMObject *)item
{
    [_eventItems addObject:item];
}

@end
