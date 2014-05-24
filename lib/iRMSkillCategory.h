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

@property NSNumber *skillCatRanks;

@property NSString *skillCatStatString; // String of Stats as represented in RMSS
@property NSArray *skillCatStats; // Array generated after category is added by living so it is linked with the living's actual stats.

@end
