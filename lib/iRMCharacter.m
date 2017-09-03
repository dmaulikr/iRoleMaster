/*
 *  iRMCharacter.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 09.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
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
        super.livingIsPlayer = YES;
        iRMLog *newLog = [[iRMLog alloc] initWithLevel:LOG_CHARACTER_CREATE];
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
    int currentExperience = [_characterExperience intValue];
    // formula for experienceLevel;
    if (currentExperience < 50000) {
        experienceLevel = currentExperience / 10000;
    } else if (currentExperience < 250000) {
        experienceLevel = ((currentExperience - 50000) / 20000) + 5;
    } else if (currentExperience < 500000) {
        experienceLevel = ((currentExperience - 250000) / 30000) + 10;
    } else if (currentExperience < 750000) {
        experienceLevel = ((currentExperience - 500000) / 40000) + 15;
    } else {
        experienceLevel = ((currentExperience - 750000) / 50000) + 20;
    }
    if (experienceLevel > currentLevel) {
        _characterDing = @YES;
        // Create log text
        NSLog(@"DING: %@(%d) level ready to advance level to %d.", _characterName, currentLevel, experienceLevel);
        iRMLog *newLog = [[iRMLog alloc] initWithLevel:LOG_LIVING_LEVEL];
        newLog.logCharacter = [self copy];
        newLog.logDescription = [[NSString alloc] initWithFormat:@"DING: %@(%d) ready to advance level to %d.", _characterName, currentLevel, experienceLevel];
        return YES;
    }
    return NO;
}

@end
