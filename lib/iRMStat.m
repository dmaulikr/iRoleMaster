/*
 *  iRMStat.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 07.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 */

#import "iRMStat.h"

@implementation iRMStat

/*
 * Initializing iRMStat
 */
- (id)init
{
    self = [super init];
    
    if (self) {
        self.statTemp = @60;
        [self calculatePotStat];
        [self calculateBasicBonus];
        [self calculateTotalBonus];
    }
    return self;
}
- (id)initFromLoad:(NSNumber *)sID temp:(NSNumber *)temp pot:(NSNumber *)pot
{
    self = [super init];
    
    if (self) {
        self.statID = [[NSNumber alloc] initWithInt:[sID intValue]];
        [self buildFromID:_statID];
        self.statTemp = [[NSNumber alloc] initWithInt:[temp intValue]];
        [self calculatePotStat];
        [self calculateBasicBonus];
        [self calculateTotalBonus];
    }
    return self;
}
- (id)initWithID:(NSNumber *)sID
{
    self = [super init];
    
    if (self) {
        self.statID = [[NSNumber alloc] initWithInt:[sID intValue]];
        [self buildFromID:self.statID];
        self.statTemp = @60;
        [self calculatePotStat];
        [self calculateBasicBonus];
        [self calculateTotalBonus];
    }
    return self;
}
/*+ (id)statWithID:(NSNumber *)sID
{
    return [self initWithID:sID];

    self.statID = [[NSNumber alloc] initWithInt:[sID intValue]];
    [self buildFromID:sID];
    self.statTemp = @60;
    [self calculatePotStat];
    [self calculateBasicBonus];
    [self calculateTotalBonus];
 
}*/
/*
 * Methods setting/altering variables
 */
- (void)rollStatGain:(NSNumber *)firstDie and:(NSNumber *) secondDie
{
    int diff = [_statPot intValue] - [_statTemp intValue];
    int mod = 0;
    int highDie = 0;
    int lowDie = 0;
    if (firstDie > secondDie) {
        highDie = [firstDie intValue];
        lowDie = [secondDie intValue];
    } else {
        lowDie = [firstDie intValue];
        highDie = [secondDie intValue];
    }
    if (diff < 11) {
        mod = lowDie;
    } else if (diff > 20) {
        mod = lowDie + highDie;
    } else {
        mod = highDie;
    }
    if (firstDie == secondDie) {
        switch ([firstDie intValue]) {
            case 1:
                mod = -1;
                break;
            case 2:
                mod = -2;
                break;
            case 3:
                mod = -3;
                break;
            case 4:
                mod = -4;
                break;
            case 5:
                mod = -5;
                break;
            case 6:
                mod = 12;
                break;
            case 7:
                mod = 14;
                break;
            case 8:
                mod = 16;
                break;
            case 9:
                mod = 18;
                break;
            case 10:
                mod = 20;
                break;
            default:
                NSLog(@"Error in rollStatGain, dice values %d/%d", [firstDie intValue],[firstDie intValue]);
        }
    }
    if (mod > diff) mod = diff;
    
    _statTemp = [[NSNumber alloc] initWithInt:([_statTemp intValue] + mod)];
    [self calculateBasicBonus];
    [self calculateTotalBonus];
}

- (void)buildFromID:(NSNumber *)sID
{
    switch ([sID intValue]) {
        case STAT_AGILITY:
            self.statAbrev = @"AG";
            self.statName = NSLocalizedString(@"Agility", @"Attribute: Agility");
            break;
        case STAT_CONSTITUTION:
            self.statAbrev = @"CO";
            self.statName = NSLocalizedString(@"Constitution", @"Attribute: Constitution");
            break;
        case STAT_MEMORY:
            self.statAbrev = @"ME";
            self.statName = NSLocalizedString(@"Memory", @"Attribute: Memory");
            break;
        case STAT_REASONING:
            self.statAbrev = @"RE";
            self.statName = NSLocalizedString(@"Reasoning", @"Attribute: Reasoning");
            break;
        case STAT_SELFDISCIPLINE:
            self.statAbrev = @"SD";
            self.statName = NSLocalizedString(@"Self Discipline", @"Attribute: Self Discipline");
            break;
        case STAT_EMPATHY:
            self.statAbrev = @"EM";
            self.statName = NSLocalizedString(@"Empathy", @"Attribute: Empathy");
            break;
        case STAT_INTUITION:
            self.statAbrev = @"IN";
            self.statName = NSLocalizedString(@"Intuition", @"Attribute: Intuition");
            break;
        case STAT_PRESENCE:
            self.statAbrev = @"PR";
            self.statName = NSLocalizedString(@"Presence", @"Attribute: Presence");
            break;
        case STAT_QUICKNESS:
            self.statAbrev = @"QU";
            self.statName = NSLocalizedString(@"Quickness", @"Attribute: Quickness");
            break;
        case STAT_STRENGTH:
            self.statAbrev = @"ST";
            self.statName = NSLocalizedString(@"Strength", @"Attribute: Strength");
            break;
        default:
            self.statAbrev = @"none";
            self.statName = NSLocalizedString(@"-- none --", @"Attribute: None - error");
            NSLog(@"Error in initializing STAT, ID:%d invalid.", [sID intValue]);
            return;
    }
    NSLog(@"Stat: (%@)%@ initialized with ID:%d.", _statAbrev, _statName, [sID intValue]);
}
/*
 * Methods recalculating variables
 */
- (void)calculatePotStat
{
    if ([_statTemp intValue] > 98) {
        _statPot = [[NSNumber alloc] initWithInt:([_statTemp intValue] + 1)];
    } else if ([_statTemp intValue] > 96) {
        _statPot = [[NSNumber alloc] initWithInt:([_statTemp intValue] + 2)];
    } else if ([_statTemp intValue] > 94) {
        _statPot = [[NSNumber alloc] initWithInt:([_statTemp intValue] + 3)];
    } else if ([_statTemp intValue] > 92) {
        _statPot = [[NSNumber alloc] initWithInt:([_statTemp intValue] + 4)];
    } else if ([_statTemp intValue] > 91) {
        _statPot = [[NSNumber alloc] initWithInt:([_statTemp intValue] + 5)];
    } else if ([_statTemp intValue] > 84) {
        _statPot = [[NSNumber alloc] initWithInt:([_statTemp intValue] + 6)];
    } else if ([_statTemp intValue] > 74) {
        _statPot = [[NSNumber alloc] initWithInt:([_statTemp intValue] + 11)];
    } else if ([_statTemp intValue] > 64) {
        _statPot = [[NSNumber alloc] initWithInt:([_statTemp intValue] + 17)];
    } else if ([_statTemp intValue] > 54) {
        _statPot = [[NSNumber alloc] initWithInt:([_statTemp intValue] + 22)];
    } else if ([_statTemp intValue] > 44) {
        _statPot = [[NSNumber alloc] initWithInt:([_statTemp intValue] + 28)];
    } else if ([_statTemp intValue] > 34) {
        _statPot = [[NSNumber alloc] initWithInt:([_statTemp intValue] + 33)];
    } else if ([_statTemp intValue] > 24) {
        _statPot = [[NSNumber alloc] initWithInt:([_statTemp intValue] + 39)];
    } else {
        _statPot = [[NSNumber alloc] initWithInt:([_statTemp intValue] + 44)];
    }
}
- (void)calculateBasicBonus
{
    if ([_statTemp intValue] < 11) {
        _statBasicBonus = [[NSNumber alloc] initWithInt:(([_statTemp intValue] - 21) / 2)];
    } else if ([_statTemp intValue] < 31) {
        _statBasicBonus = [[NSNumber alloc] initWithInt:(([_statTemp intValue] - 33) / 5)];
    } else if ([_statTemp intValue] > 100) {
        _statBasicBonus = [[NSNumber alloc] initWithInt:(([_statTemp intValue] - 95) * 2)];
    } else if ([_statTemp intValue] > 89) {
        _statBasicBonus = [[NSNumber alloc] initWithInt:(([_statTemp intValue] - 81) / 2)];
    } else if ([_statTemp intValue] > 69) {
        _statBasicBonus = [[NSNumber alloc] initWithInt:(([_statTemp intValue] - 67) / 5)];
    } else {
        _statBasicBonus = [[NSNumber alloc] initWithInt:0];
    }
}
- (void)calculateTotalBonus
{
    _statTotalBonus = [[NSNumber alloc] initWithInt:([_statBasicBonus intValue] + [_statRaceBonus intValue] + [_statSpecialBonusHard intValue] + [_statSpecialBonusSoft intValue])];
}
/*
 * Methods returning variable values
 */
- (NSNumber *)getTempStat
{
    return _statTemp;
}
- (NSNumber *)getPotStat
{
    return _statPot;
}
- (NSNumber *)getBasicBonus
{
    return _statBasicBonus;
}
- (NSNumber *)getRaceBonus
{
    return _statRaceBonus;
}
- (NSNumber *)getSpecialBonus
{
    return [[NSNumber alloc] initWithInt:([_statSpecialBonusSoft intValue] + [_statSpecialBonusHard intValue])];
}
- (NSNumber *)getTotalBonus
{
    return _statTotalBonus;
}

- (NSNumber *)getAssignmentCost
{
    if ([_statTemp intValue] > 90) {
        return [[NSNumber alloc] initWithInt:(90 + (([_statTemp intValue] - 90)^2))];
    }
    return _statTemp;
}

@end
