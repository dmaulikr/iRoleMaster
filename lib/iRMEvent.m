/*
 *  iRMEvent.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
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
