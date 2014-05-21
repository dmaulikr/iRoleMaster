/*
 *  iRMArmor.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 13.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 */

#import <Foundation/Foundation.h>
#import "iRMObject.h"

enum {
    ARMOR_INVALID = -1,
    ARMOR_NONE = 0,
    ARMOR_SKIN,
    ARMOR_ROBES,
    ARMOR_LIGHT_HIDE,
    ARMOR_HEAVY_HIDE,
    ARMOR_LEATHER_JERKIN,
    ARMOR_LEATHER_COAT,
    ARMOR_REINFORCED_LEATHER,
    ARMOR_REINFORCED_FULL_LENGTH_LEATHER,
    ARMOR_LEATHER_BREASTPLATE,
    ARMOR_LEATHER_BREASTPLATE_GREAVES,
    ARMOR_HALF_HIDE_PLATE,
    ARMOR_FULL_HIDE_PLATE,
    ARMOR_CHAIN_SHIRT,
    ARMOR_CHAIN_SHIRT_GREAVES,
    ARMOR_FULL_CHAIN,
    ARMOR_CHAIN_HAUBERK,
    ARMOR_METAL_BREASTPLATE,
    ARMOR_METAL_BREASTPLATE_GREAVES,
    ARMOR_HALF_PLATE,
    ARMOR_FULL_PLATE,
    ARMOR_FLAK_VEST,
    ARMOR_EXTENDED_FLAK_VEST,
    ARMOR_REINFORCED_FLAK_VEST,
    ARMOR_REINFORCED_FLAK_ARMOR,
    ARMOR_KINETIK_VEST,
    ARMOR_KINETIK_JACKET,
    ARMOR_KINETIK_SUIT,
    ARMOR_COMBAT_BREASTPLATE,
    ARMOR_COMBAT_BREASTPLATE_GREAVES,
    ARMOR_FULL_COMBAT,
    ARMOR_POWERED_SUIT
};

@interface iRMArmor : iRMObject

@property NSNumber *armorType;
@property NSNumber *armorMissileAttackPenalty;
@property NSNumber *armorMinimumManeuverModifier;
@property NSNumber *armorMaximumManeuverModifier;
@property NSNumber *armorQuicknessPenalty;

- (id)initWithAT:(NSNumber *)at;
- (void)setArmorProperties:(NSNumber *)at and:(NSNumber *)missilePen and:(NSNumber *)minManeuver and:(NSNumber *)maxManeuver and:(NSNumber *)quPen;

@end
