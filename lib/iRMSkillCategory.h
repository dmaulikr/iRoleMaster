/*
 *  iRMSkillCategory.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 5/23/14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * This object represents skill categories. It handles skill progression.
 */

#import <Foundation/Foundation.h>

@interface iRMSkillCategory : NSObject

@property NSString *skillCatName;
@property NSString *skillCatDescription;

@property NSNumber *skillCatRanks; // Number of ranks

@property NSString *skillCatStatString; // String of Stats as represented in RMSS
@property NSArray *skillCatStats; // Array generated after category is added by living so it is linked with the living's actual stats.
@property NSNumber *skillCatProf; // Professional Bonus
@property NSArray *skillCatDevCost; // Up to 3 NSNumber values indicating development cost of the category, void means untrainable
@property NSNumber *skillCatNewRanks; // New ranks to train, this is to pre-calculate on level up, and can be used throughout the game to plan skills for next level up
@property NSNumber *skillCatSpecialSoft; // Temporary, short term or item dependent bonuses (spell effect, magic equipment, etc)
@property NSNumber *skillCatSpecialHard; // Long term bonuses (talents, etc)

@end
