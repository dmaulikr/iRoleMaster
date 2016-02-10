/*
 *  iRMSkill.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 10.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * The Skill object is supposed to represent the abilities a player have in a skill. This will allow for checks to see how the character performs a specific activity, and should tell any graphical engines how the result is to be shown.
 *
 */

#import <Foundation/Foundation.h>
#import "iRMSkillCategory.h"

enum {
    SKILL_RESULT_SPECTACULAR_FAILURE = 0,
    SKILL_RESULT_ABSOLUTE_FAILURE,
    SKILL_RESULT_FAILURE,
    SKILL_RESULT_UNUSUAL_EVENT,
    SKILL_RESULT_PARTIAL_SUCCESS,
    SKILL_RESULT_NEAR_SUCCESS,
    SKILL_RESULT_UNUSUAL_SUCCESS,
    SKILL_RESULT_SUCCESS,
    SKILL_RESULT_ABSOLUTE_SUCCESS
};

@interface iRMSkill : NSObject

@property NSString *skillName;
@property NSString *skillDescription;
@property NSArray *skillStats; // Optional rule, up to 3 stats
//@property iRMSkillCategory *skillCategory;
@property NSString *skillCategory;
@property NSString *skillNote;
@property BOOL *skillSpecialible;
@property NSString *skillSpecialty;
@property NSNumber *skillRanks; // Number of ranks
@property NSNumber *skillNewRanks; // New ranks to train, this is to pre-calculate on level up, and can be used throughout the game to plan skills for next level up
@property NSNumber *skillSpecialSoft; // Temporary, short term or item dependent bonuses (spell effect, magic equipment, etc)
@property NSNumber *skillSpecialHard; // Long term bonuses (talents, etc)

@end
