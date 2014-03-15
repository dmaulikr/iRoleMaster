/*
 *  iRMHandout.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * Handouts are undated information disclosed to players. A GM should be able to pre-generate handouts while planning a champaign as well as creating them on the fly. A player should be able to append notes to a handout. The GM should be able to see a players notes, and append information as GM addendum, while other players should not have access to this.
 *
 */

#import "iRMHandout.h"
#import "iRMLog.h"

@implementation iRMHandout

- (id) init
{
    self = [super init];
    if (self) {
        iRMLog *newLog = [[iRMLog alloc] init];
        newLog.logDescription = @"New Handout Created by GM";
    }
    return self;
}

- (void) setTitle:(NSString *)title
{
    if (_handoutTitle) {
        NSLog(@"Trying to set new title to old Handout!");
        iRMLog *newLog = [[iRMLog alloc] init];
        newLog.logDescription = [[NSString alloc] initWithFormat:@"Handout with title \"%@\" changed to \"%@\"", _handoutTitle, title];
    } else {
        iRMLog *newLog = [[iRMLog alloc] init];
        newLog.logDescription = [[NSString alloc] initWithFormat:@"Handout given title: %@", title];
    }
    _handoutTitle = [NSString stringWithString:title];
}
- (void) addPerson:(iRMLiving *)person
{
    [_handoutPersons addObject:person];
}
- (void) addPersonFromString:(NSString *)person
{
    [_handoutPersons addObject:person];
}

- (void) addLocation:(iRMLocation *)location
{
    [_handoutLocations addObject:location];
}

- (void) addItem:(iRMObject *)item
{
    [_handoutItems addObject:item];
}

- (void) updateDescription:(NSString *)desc
{
    _handoutDescription = [NSMutableString stringWithString:desc];
}

@end
