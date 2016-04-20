//
//  iRMWeapon.h
//  iRoleMaster
//
//  Created by Aun Johnsen on 4/3/16.
//  Copyright © 2016 Aun Johnsen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iRMObject.h"
#import "iRMSkill.h"

enum {
    WEAPON_DAMAGE_SLASH = 0,
    WEAPON_DAMAGE_KRUSH,
    WEAPON_DAMAGE_PUNCTURE,
    WEAPON_DAMAGE_MITHRIL,
    WEAPON_DAMAGE_HOLY,
    WEAPON_DAMAGE_UNBALANCE,
    WEAPON_DAMAGE_GRAPPLE,
    WEAPON_DAMAGE_TALON,
};
enum {
    WEAPON_FUMBLE_2HANDED,
    WEAPON_FUMBLE_1HANDED,
    WEAPON_FUMBLE_MISSILE,
    WEAPON_FUMBLE_POLEARM,
};
enum {
    WEAPON_RANGE_POINT_BLANK,
    WEAPON_RANGE_SHORT,
    WEAPON_RANGE_MEDIUM,
    WEAPON_RANGE_LONG,
    WEAPON_RANGE_EXTRA_LONG
};
enum {
    WEAPON_AMUNITION_NONE = -1,
    WEAPON_AMUNITION_SELF, // for throwing daggers, etc
    WEAPON_AMUNITION_ROCK, // for slings
    WEAPON_AMUNITION_ARROW, // generic arrow
    WEAPON_AMUNITION_ARROW_SHORT,
    WEAPON_AMUNITION_ARROW_LONG,
    WEAPON_AMUNITION_BOLT,
    // Blackpowder amunition
    WEAPON_AMUNITION_31_BALL, // .31 Ball
    // Cartridge bullets
    WEAPON_AMUNITION_6_REMINGTON, // 6mm Remington
    WEAPON_AMUNITION_8_LEBEL_M92, // 8mm Lebel M92
    // Shotgun shells & slugs
    WEAPON_AMUNITION_8_GAUGE, //

};

enum {
    WEAPON_ACTION_SAUTO,
    WEAPON_ACTION_SACTION,
    WEAPON_ACTION_DACTION,
    WEAPON_ACTION_AUTO,
    WEAPON_ACTION_AUTO_T,
    WEAPON_ACTION_AUTO_O,
    WEAPON_ACTION_AUTO_D,
    WEAPON_ACTION_AUTO3,
    WEAPON_ACTION_BOLT,
    WEAPON_ACTION_BREACH,
    WEAPON_ACTION_AUTO3_O,
    WEAPON_ACTION_SAUTO3,
    WEAPON_ACTION_PUMP,
    WEAPON_ACTION_LEVER,
    WEAPON_ACTION_FLINT,
    WEAPON_ACTION_PERC,
    WEAPON_ACTION_MATCH,
    WEAPON_ACTION_TOUCH,
};

@interface iRMWeapon : iRMObject

@property NSNumber *weaponType;
@property iRMSkill *weaponMeleeSkill; // melee skill
@property iRMSkill *weaponMissileSkill; // missile or ranged skill
@property NSDictionary *weaponRangeModifier; // [ WEAPON_RANGE_SHORT, 'feet', 25, 150, 0 ] # Short range from 25 to 150 feet, penalty/bonus of 0
@property NSNumber *weaponFumbleRange; // 01-xxUM gives fumble
@property NSNumber *weaponFumbleType; // Fumble table/action to use
@property NSNumber *weaponReliability; // Weapon reliability, chance of getting weapon jammed
@property NSArray *weaponBreakages; // Chance of weapon breaking
@property NSNumber *weaponOBBonus; // Non-magical bonus
@property NSNumber *weaponOBMagic; // Magical bonus
@property NSNumber *weaponSlaying; // Slaying critical type (for special weapons)
@property NSNumber *weaponPCrit; // Primary Critical
@property NSNumber *weaponSCrit; // Secundary Critical
@property NSNumber *weaponTCrit; // Tertiary Critical
@property NSNumber *weaponAmunitionType; // ENUM for amunition, -1 for melee weapon
@property NSNumber *weaponAmunitionCapacity; // Amunition capacity for internal magazines, revolvers, etc. unset assume 1 for ranged, 0 for melee
@property NSString *weaponHuntclass; // Hunting class for fire arms and energy weapon
@property NSNumber *weaponAttackTable; // Attacktable to use
@property NSDictionary *weaponTableModifier; // Attack Table Modifier [ ARMOUR_CLASS: modifier ]
@property NSString *weaponStrength;
@property NSNumber *weaponThreshold;


- (id) initWithType:(NSNumber *)wt;

- (NSString *) getHunt;

@end
