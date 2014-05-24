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

@interface iRMSkill : NSObject

@property NSString *skillName;
@property NSString *skillDescription;
@property NSArray *skillStats; // Optional rule, up to 3 stats
//@property iRMSkillCategory *skillCategory;
@property NSString *skillNote;
@property BOOL *skillSpecialible;
@property NSString *skillSpecialty;
@property NSNumber *skillRanks; // Number of ranks

@end
