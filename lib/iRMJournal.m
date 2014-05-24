/*
 *  iRMJournal.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 */

#import "iRMJournal.h"
#import "iRMEvent.h"
#import "iRMHandout.h"
#import "iRMLog.h"
#import "iRMCharacter.h"
#import "iRMJournalEntry.h"

@implementation iRMJournal

- (id) init
{
    self = [super init];
    
    if (self) {
        
    }
    return self;
}
/*
- (void) addEvent:(iRMEvent *)event
{
    [_journalEvents addObject:event];
    iRMLog *newLog = [[iRMLog alloc] init];
    newLog.logCharacter = _journalOwner;
    newLog.logDescription = [[NSString alloc] initWithFormat:@"%@ learns about an event: %@", [newLog.logCharacter characterName], [event eventTitle]];
}
- (void) addHandout:(iRMHandout *)handout
{
    [_journalHandouts addObject:handout];
    iRMLog *newLog = [[iRMLog alloc] init];
    newLog.logCharacter = _journalOwner;
    newLog.logDescription = [[NSString alloc] initWithFormat:@"%@ given a handout: %@", [newLog.logCharacter characterName], [handout handoutTitle]];
    
} */
- (void) addEntry:(iRMJournalEntry *)entry
{
    [_journalEntry addObject:entry];
    iRMLog *newLog = [[iRMLog alloc] init];
    newLog.logCharacter = _journalOwner;
    newLog.logDescription = [[NSString alloc] initWithFormat:@"%@ adds a journal entry.", [newLog.logCharacter characterName]];
}

@end
