/*
 *  iRMMonster.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 07.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * This is the standard monsters, beasts and animals
 *
 */

#import <Foundation/Foundation.h>
#import "iRMLiving.h"
#import "iRMTerrain.h" // for terrain and climate types

@interface iRMMonster : iRMLiving

@property NSMutableSet *monsterClimates; // in what climates are they found
@property NSMutableSet *monsterLocales; // in what locales are they found

- (id) init;

- (void) addClimate:(NSNumber *)climate;
- (void) addLocale:(NSNumber *)locale;

@end
