/*
 *  iRMLiving.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 07.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 */

#import "iRMLiving.h"
#import "iRMLog.h"
#import "iRMStat.h"

@implementation iRMLiving

- (id) init
{
    self = [super init];
    
    if (self) {
        const iRMStat __unsafe_unretained *rawStats[10] = { [[iRMStat alloc] initWithID:@0], [[iRMStat alloc] initWithID:@1], [[iRMStat alloc] initWithID:@2], [[iRMStat alloc] initWithID:@3], [[iRMStat alloc] initWithID:@4], [[iRMStat alloc] initWithID:@5], [[iRMStat alloc] initWithID:@6], [[iRMStat alloc] initWithID:@7], [[iRMStat alloc] initWithID:@8], [[iRMStat alloc] initWithID:@9] };
        _livingIsPlayer = NO;
        _livingStats = [NSArray arrayWithObjects:(rawStats) count:10];
    }
    return self;
}

- (NSString *) getGenderString
{
    switch ([_livingGender intValue]) {
        case GENDER_NEUTER:
            return NSLocalizedString(@"Neuter", @"Gender: Neuter");
        case GENDER_MALE:
            return NSLocalizedString(@"Male", @"Gender: Male");
        case GENDER_FEMALE:
            return NSLocalizedString(@"Female", @"Gender: Female");
        case GENDER_HERMAFRODITE:
            return NSLocalizedString(@"Hermafrodite", @"Gender: Hermafrodite");
        default:
            return NSLocalizedString(@"Unknown", @"Gender: Unknown");
    }
}

- (BOOL) isStunned
{
    if (_livingStun > 0) return YES;
    return NO;
}
/**
 *  @author Aun Johnsen <skippern@gimnechiske.org>, 2016-04-03
 *
 *  Adds stun to living creature
 *
 *  @param rounds number of rounds of stun
 */
- (void) addStun:(NSNumber *)rounds
{
    int tmp = [_livingStun intValue] + [rounds intValue];
    _livingStun = [[NSNumber alloc] initWithInt:tmp];
    /* If not a character, break here */
    if (!self.isPlayerCharacter) {
        return;
    }
    
    iRMLog *newLog = [[iRMLog alloc] initWithLevel:LOG_LIVING_COMBAT];
    newLog.logCharacter = NULL; // put character object here
    newLog.logDescription = [[NSString alloc] initWithFormat:@"%@ stunned for %d rounds!", newLog.logCharacter.characterName, [rounds intValue]];
    if (_livingStun > [_livingStats[STAT_CONSTITUTION] getTotalBonus]) {
        /* Character is now unconcious */
        iRMLog *alert;
        alert.logCharacter = NULL; // put character object here
        alert.logDescription = [[NSString alloc] initWithFormat:@"%@ are stunned beyond threshold and therefor unconcious", alert.logCharacter.characterName];
    }
}

- (void) removeStun:(NSNumber *)rounds
{
    if (_livingStun == 0) return;
    int tmp = [_livingStun intValue] - [rounds intValue];
    if (tmp < 0) _livingStun = [[NSNumber alloc] initWithInt:0];
    else _livingStun = [[NSNumber alloc] initWithInt:tmp];
}
- (void) doDie
{
    /*
     * Here I need a code to eliminate the living and convert it to a dead corpse. This function will need a series of checks to verify that the death is valid. It will also start any clocks regarding soul departure, resurection, etc.
     */
    iRMLog *newLog = [[iRMLog alloc] initWithLevel:LOG_LIVING_DEATH];
    newLog.logCharacter = NULL; // put character object here
    newLog.logDescription = [[NSString alloc] initWithFormat:@"%@ is dead!", newLog.logCharacter.characterName];
}
- (BOOL) isPlayerCharacter
{
    return _livingIsPlayer;
}

@end
