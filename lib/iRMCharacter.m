/*
 *  iRMCharacter.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 09.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * The character object includes all information in the character sheet. It inherits iRMLiving, so that all living objects have the same base.
 *
 */

#import "iRMCharacter.h"
#import "iRMLiving.h"
#import "iRMStat.h"
#import "iRMJournal.h"
#import "iRMLog.h"

@implementation iRMCharacter

- (id) init
{
    self = [super init];
    
    if (self) {
        _characterJournal = [[iRMJournal alloc] init];
        [_characterJournal setJournalOwner:[self copy]];
        iRMLog *newLog = [[iRMLog alloc] init];
        newLog.logCharacter = [self copy];
        newLog.logDescription = @"New Character created";
    }
    return self;
}

- (BOOL) isLevelUp
{
    if ([_characterDing boolValue] == YES) {
        return YES;
    }
    int currentLevel = [super.livingLevel intValue];
    int experienceLevel = 0;
    // formula for experienceLevel;
    if (experienceLevel > currentLevel) {
        _characterDing = @YES;
        // Create log text
        NSLog(@"DING: %@(%d) level ready to advance level to %d", _characterName, currentLevel, experienceLevel);
        return YES;
    }
    return NO;
}

@end
