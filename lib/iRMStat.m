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

/**
 *  @author Aun Johnsen <skippern@gimnechiske.org>
 *
 *  Initializer, base initializing of a stat object
 *
 *  @return the stat object
 *
 *  @since 0
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
/**
 *  @author Aun Johnsen <skippern@gimnechiske.org>
 *
 *  Initializer for loaded objects
 *
 *  @param sID  stat ID
 *  @param temp Temp stat value
 *  @param pot  Pot stat value
 *
 *  @return the stat object
 *
 *  @since 0
 */
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
/**
 *  @author Aun Johnsen <skippern@gimnechiske.org>
 *
 *  Default initializer
 *
 *  @param sID stat ID
 *
 *  @return the stat object
 *
 *  @since 0
 */
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

/**
 *  @author Aun Johnsen <skippern@gimnechiske.org>
 *
 *  This function should be run for each stat on level up
 *
 *  @param firstDie  first die roll (value 1 - 10)
 *  @param secondDie second die roll (value 1 - 10)
 *
 *  @since 0
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

/**
 *  @author Aun Johnsen <skippern@gimnechiske.org>
 *
 *  Building the stats, based on their ids
 *
 *  @param sID stat ID
 *
 *  @since 0
 */
- (void)buildFromID:(NSNumber *)sID
{
    switch ([sID intValue]) {
        case STAT_AGILITY:
            self.statAbrev = @"AG";
            self.statName = NSLocalizedString(@"Stat:Agility", @"Attribute: Agility");
            self.statDescription = NSLocalizedString(@"Stat:Agility:Description", @"Description: Agility");
            break;
        case STAT_CONSTITUTION:
            self.statAbrev = @"CO";
            self.statName = NSLocalizedString(@"Stat:Constitution", @"Attribute: Constitution");
            self.statDescription = NSLocalizedString(@"Stat:Constitution:Description", @"Description: Constitution");
            break;
        case STAT_MEMORY:
            self.statAbrev = @"ME";
            self.statName = NSLocalizedString(@"Stat:Memory", @"Attribute: Memory");
            self.statDescription = NSLocalizedString(@"Stat:Memory:Description", @"Description: Memory");
            break;
        case STAT_REASONING:
            self.statAbrev = @"RE";
            self.statName = NSLocalizedString(@"Stat:Reasoning", @"Attribute: Reasoning");
            self.statDescription = NSLocalizedString(@"Stat:Reasoning:Description", @"Description: Reasoning");
            break;
        case STAT_SELFDISCIPLINE:
            self.statAbrev = @"SD";
            self.statName = NSLocalizedString(@"Stat:Self Discipline", @"Attribute: Self Discipline");
            self.statDescription = NSLocalizedString(@"Stat:Self Discipline:Description", @"Description: Self Discipline");
            break;
        case STAT_EMPATHY:
            self.statAbrev = @"EM";
            self.statName = NSLocalizedString(@"Stat:Empathy", @"Attribute: Empathy");
            self.statDescription = NSLocalizedString(@"Stat:Empathy:Description", @"Description: Empathy");
            break;
        case STAT_INTUITION:
            self.statAbrev = @"IN";
            self.statName = NSLocalizedString(@"Stat:Intuition", @"Attribute: Intuition");
            self.statDescription = NSLocalizedString(@"Stat:Intuition:Description", @"Description: Intuition");
            break;
        case STAT_PRESENCE:
            self.statAbrev = @"PR";
            self.statName = NSLocalizedString(@"Stat:Presence", @"Attribute: Presence");
            self.statDescription = NSLocalizedString(@"Stat:Presence:Description", @"Description: Presence");
            break;
        case STAT_QUICKNESS:
            self.statAbrev = @"QU";
            self.statName = NSLocalizedString(@"Stat:Quickness", @"Attribute: Quickness");
            self.statDescription = NSLocalizedString(@"Stat:Quickness:Description", @"Description: Quickness");
            break;
        case STAT_STRENGTH:
            self.statAbrev = @"ST";
            self.statName = NSLocalizedString(@"Stat:Strength", @"Attribute: Strength");
            self.statDescription = NSLocalizedString(@"Stat:Strength:Description", @"Description: Strength");
            break;
        default:
            self.statAbrev = @"none";
            self.statName = NSLocalizedString(@"Stat:-- none --", @"Attribute: None - error");
            self.statDescription = NSLocalizedString(@"Stat:Error:Description", @"Description: Error in Stats");
            NSLog(@"Error in initializing STAT, ID:%d invalid.", [sID intValue]);
            return;
    }
    NSLog(@"Stat: (%@)%@ initialized with ID:%d.", _statAbrev, _statName, [sID intValue]);
}

/**
 *  @author Aun Johnsen <skippern@gimnechiske.org>
 *
 *  On the fly calculation of pot stat value, this is done during character creation
 *
 *  @since 0
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
/**
 *  @author Aun Johnsen <skippern@gimnechiske.org>
 *
 *  Calculates the Basic Bonus of the stat, this should be re-run for every change of a stat (temporary 
 *     reductions due to poison, spells, etc. as well as permanent changes at level up)
 *
 *  @since 0
 */
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

/**
 *  @author Aun Johnsen <skippern@gimnechiske.org>
 *
 *  Getting the assignment cost of a stat. This function will be constantly run during creation, until the character
 *     is saved.
 *
 *  @return The assignment cost of the stat
 *
 *  @since 0
 */
- (NSNumber *)getAssignmentCost
{
    if ([_statTemp intValue] > 90) {
        return [[NSNumber alloc] initWithInt:(90 + (([_statTemp intValue] - 90)^2))];
    }
    return _statTemp;
}

/**
 * @author Aun Johnsen <skippern@gimnechiske.org>
 *
 *  Getting the stat localized name, used to populate in character sheet, skill lists, etc.
 *
 *  @param stat The stat enum
 *
 *  @return The stat text localized string
 */
- (NSString *)getStatString:(int)stat
{
    switch (stat) {
        case STAT_AGILITY:
            return NSLocalizedString(@"Agility Stat", @"Agility String");
        case STAT_CONSTITUTION:
            return NSLocalizedString(@"Constitution Stat", @"Constitution String");
        case STAT_EMPATHY:
            return NSLocalizedString(@"Empathy Stat", @"Empaty String");
        case STAT_INTUITION:
            return NSLocalizedString(@"Intuition Stat", @"Intuition String");
        case STAT_MEMORY:
            return NSLocalizedString(@"Memory Stat", @"Memory String");
        case STAT_PRESENCE:
            return NSLocalizedString(@"Presence Stat", @"Presence String");
        case STAT_QUICKNESS:
            return NSLocalizedString(@"Quickness Stat", @"Quickness String");
        case STAT_REASONING:
            return NSLocalizedString(@"Reasoning Stat", @"Reasoning String");
        case STAT_SELFDISCIPLINE:
            return NSLocalizedString(@"Self Discipline Stat", @"Self Discipline String");
        case STAT_STRENGTH:
            return NSLocalizedString(@"Strength Stat", @"Strength String");
        default:
            return NSLocalizedString(@"Invalid Stat", @"Invalid Stat String");
    }
}

- (NSString *)getStatShortString:(int)stat
{
    switch (stat) {
        case STAT_AGILITY:
            return NSLocalizedString(@"Agility Short Stat", @"Agility Short String");
        case STAT_CONSTITUTION:
            return NSLocalizedString(@"Constitution Short Stat", @"Constitution Short String");
        case STAT_EMPATHY:
            return NSLocalizedString(@"Empathy Short Stat", @"Empaty Short String");
        case STAT_INTUITION:
            return NSLocalizedString(@"Intuition Short Stat", @"Intuition Short String");
        case STAT_MEMORY:
            return NSLocalizedString(@"Memory Short Stat", @"Memory Short String");
        case STAT_PRESENCE:
            return NSLocalizedString(@"Presence Short Stat", @"Presence Short String");
        case STAT_QUICKNESS:
            return NSLocalizedString(@"Quickness Short Stat", @"Quickness Short String");
        case STAT_REASONING:
            return NSLocalizedString(@"Reasoning Short Stat", @"Reasoning Short String");
        case STAT_SELFDISCIPLINE:
            return NSLocalizedString(@"Self Discipline Short Stat", @"Self Discipline Short String");
        case STAT_STRENGTH:
            return NSLocalizedString(@"Strength Short Stat", @"Strength Short String");
        default:
            return NSLocalizedString(@"Invalid Short Stat", @"Invalid Stat Short String");
    }
}



@end
