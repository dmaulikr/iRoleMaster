/*
 *  iRMLiving.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 07.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * The base file in all living, wether a monster, beast, animal, NPC, player character, or even in mechanical and artificial lifeforms such as golems, constructs, robots, androids, etc.
 *
 */

#import <Foundation/Foundation.h>
#import "iRMStat.h"

enum {
    GENDER_NEUTER = 0,
    GENDER_MALE,
    GENDER_FEMALE
    };

@class iRMStat;

@interface iRMLiving : NSObject
/*
 * List of variables common to all living objects
 */
@property NSArray *livingStats;
@property NSMutableSet *livingSkills; // stores both skills and skillCats
@property NSSet *livingTalents;
@property NSSet *livingFlaws;
@property NSString *livingRace;
@property NSNumber *livingGender;
@property NSNumber *livingLevel;
@property NSDate *livingDateOfBirth; // in GameTime
@property NSNumber *livingAge; // actual age
@property NSNumber *livingAppearance;
@property NSNumber *livingWeight;
@property NSNumber *livingHeight;

@property NSNumber *livingHits; // accumulated damage (current hits = max hits (skill) - accumulated damage)
@property NSNumber *livingExhaust; // spent exhaustion (current exh = max exh (formula) - spent exh)
@property NSNumber *livingPowerPoints; // spent pp (current pp = max pp (skill) - spent pp)
@property NSNumber *livingStun; // Is stunned for #rounds
/*
 * Special Case variables
 */
@property NSNumber *livingCorruption;
@property NSNumber *livingTaint;

/*
 * Declaring initializers
 */
- (id) init;

- (NSString *) getGenderString;
- (BOOL) isStunned;
- (void) addStun:(NSNumber *)rounds;
- (void) removeStun:(NSNumber *)rounds;
- (void) doDie;

@end
