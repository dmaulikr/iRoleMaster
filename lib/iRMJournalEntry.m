/*
 *  iRMJournalEntry.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 */

#import "iRMJournalEntry.h"
#import "iRMEvent.h"
#import "iRMHandout.h"

@implementation iRMJournalEntry

- (id) init
{
    self = [super init];
    
    if (self) {
        _journalEntryObject = [[NSMutableDictionary alloc] init];
        _journalEntryObject[@"note"] = @"";
        _journalEntryObject[@"addendum"] = @"";
    }
    return self;
}

- (void) setEvent:(iRMEvent *)event {
    // if event or handout already set, return an error
    if (_journalEntryObject[@"event"] || _journalEntryObject[@"handout"]) {
        NSLog(@"Journal Error: Event or Handout already set in event. Add a new entry and try again.");
        return;
    }
    _journalEntryObject[@"event"] = event;
    return;
}
- (void) setHandout:(iRMHandout *)handout {
    // if event or handout already set, return an error
    if (_journalEntryObject[@"event"] || _journalEntryObject[@"handout"]) {
        NSLog(@"Journal Error: Event or Handout already set in event. Add a new entry and try again.");
        return;
    }
    _journalEntryObject[@"handout"] = handout;
    return;
}
- (void) updatePlayerNote:(NSString *)note
{
    _journalEntryObject[@"note"] = note;
}
- (void) updateGMAddendum:(NSString *)addendum
{
    _journalEntryObject[@"addendum"] = addendum;
}

- (iRMEvent *) getEvent
{
    return _journalEntryObject[@"event"];
}
- (iRMHandout *) getHandout
{
    return _journalEntryObject[@"handout"];
}
- (NSString *) getPlayerNote
{
    return _journalEntryObject[@"note"];
}
- (NSString *) getGMAddendum
{
    return _journalEntryObject[@"addendum"];
}

@end
