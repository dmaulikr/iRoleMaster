/*
 *  iRMStat.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 07.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * The Stats represents 10 basic abilities present in all living beings. The stats is basis for many of the calculations, such as exhaustion points, base movement, etc.
 *
 */

#import <Foundation/Foundation.h>
enum {
    STAT_INVALID = -2,
    STAT_NONE = -1,
    STAT_AGILITY = 0,
    STAT_CONSTITUTION,
    STAT_MEMORY,
    STAT_REASONING,
    STAT_SELFDISCIPLINE,
    STAT_EMPATHY,
    STAT_INTUITION,
    STAT_PRESENCE,
    STAT_QUICKNESS,
    STAT_STRENGTH
    };
/*
 * The iRMStat interface, defines the Stat object
 */
@interface iRMStat : NSObject
/*
 * List of variables to be used, this will store the basic data of the iRMStat object
 */
@property NSNumber *statID;

@property NSString *statAbrev;
@property NSString *statName;

@property NSNumber *statTemp;
@property NSNumber *statPot;
@property NSNumber *statBasicBonus;
@property NSNumber *statRaceBonus;
@property NSNumber *statSpecialBonusHard; // Set by talents/flaws, spells, equipment, location etc
@property NSNumber *statSpecialBonusSoft; // Set by GM etc
@property NSNumber *statTotalBonus;
/*
 * Init methods
 */
- (id)initFromLoad:(NSNumber *)sID temp:(NSNumber *)temp pot:(NSNumber *)pot;
- (id)initWithID:(NSNumber *)sID;
//+ (id)statWithID:(NSNumber *)sID;
/*
 * Declaration of methods to be used to manipulate and interact with the iRMStat object
 */
- (void)rollStatGain:(NSNumber *)firstDie and:(NSNumber *)secondDie;

- (void)buildFromID:(NSNumber *)sID;

- (void)calculatePotStat;
- (void)calculateBasicBonus;
- (void)calculateTotalBonus;

- (NSNumber *)getTempStat;
- (NSNumber *)getPotStat;
- (NSNumber *)getBasicBonus;
- (NSNumber *)getRaceBonus;
- (NSNumber *)getSpecialBonus;
- (NSNumber *)getTotalBonus;

- (NSNumber *)getAssignmentCost;

@end
