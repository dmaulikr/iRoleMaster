/*
 *  iRMCharacter.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 09.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * The character object includes all information in the character sheet. It inherits iRMLiving, so that all living objects have the same base.
 *
 */

#import <Foundation/Foundation.h>
#import "iRMLiving.h"
#import "iRMJournal.h"

@class iRMJournal;

@interface iRMCharacter : iRMLiving

@property NSString *characterPlayerName; // link to iCloud account?

@property (retain) iRMJournal *characterJournal;

@property NSString *characterName;
@property NSString *characterCulture; // Adolescence training, etc
@property NSString *characterProfession;
@property NSArray *characterTrainingPackages;
@property NSNumber *characterRealmOfPower;

@property NSString *characterSkinTone;
@property NSString *characterHairColor;
@property NSString *characterEyeColor;
@property NSNumber *characterApparentAge;
@property NSString *characterPersonality;
@property NSString *characterMotivation;
@property NSString *characterAlignment;

@property NSString *characterNationality;
@property NSString *characterHomeTown;
@property NSString *characterDeity; // forms religion
@property NSString *characterPatron; // not for freemen
@property NSArray *characterParents;
@property NSMutableArray *characterSpouse; // allow for poligami
@property NSMutableArray *characterChildren;
@property NSMutableString *characterOther;

@property NSNumber *characterExperience;

@property NSNumber *characterDing; // True when need attention to level up actions, default False

- (id) init;

- (BOOL) isLevelUp;

@end
