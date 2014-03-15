/*
 *  iRMMonster.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 07.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * This is the standard monsters, beasts and animals
 *
 */

#import "iRMMonster.h"

@implementation iRMMonster

- (id) init
{
    self = [super init];
    
    if (self) {
        
    }
    return self;
}

- (void) addClimate:(NSNumber *)climate
{
    [_monsterClimates addObject:climate];
}
- (void) addLocale:(NSNumber *)locale
{
    [_monsterLocales addObject:locale];
}

@end
