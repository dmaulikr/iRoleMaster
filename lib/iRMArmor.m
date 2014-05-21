/*
 *  iRMArmor.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 13.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 */

#import "iRMArmor.h"

@implementation iRMArmor

- (id) init
{
    self = [super init];
    
    if (self) {
        
    }
    return self;
}
- (id) initWithAT:(NSNumber *)at
{
    /* Creates a default armor based on AT. This is the quickest way to create an armor with default properties.
     */
    self = [super init];
    
    if (self) {
        switch ([at integerValue]) {
            case ARMOR_SKIN:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_ROBES:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_LIGHT_HIDE:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_HEAVY_HIDE:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_LEATHER_JERKIN:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_LEATHER_COAT:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_REINFORCED_LEATHER:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_REINFORCED_FULL_LENGTH_LEATHER:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_LEATHER_BREASTPLATE:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_LEATHER_BREASTPLATE_GREAVES:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_HALF_HIDE_PLATE:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_FULL_HIDE_PLATE:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_CHAIN_SHIRT:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_CHAIN_SHIRT_GREAVES:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_FULL_CHAIN:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_CHAIN_HAUBERK:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_METAL_BREASTPLATE:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_METAL_BREASTPLATE_GREAVES:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_HALF_PLATE:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_FULL_PLATE:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_FLAK_VEST:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_EXTENDED_FLAK_VEST:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_REINFORCED_FLAK_VEST:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_REINFORCED_FLAK_ARMOR:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_KINETIK_VEST:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_KINETIK_JACKET:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_KINETIK_SUIT:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_COMBAT_BREASTPLATE:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_COMBAT_BREASTPLATE_GREAVES:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_FULL_COMBAT:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            case ARMOR_POWERED_SUIT:
                _armorMissileAttackPenalty = [[NSNumber alloc] initWithInt:(0)];
                _armorMinimumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorMaximumManeuverModifier = [[NSNumber alloc] initWithInt:(0)];
                _armorQuicknessPenalty = [[NSNumber alloc] initWithInt:(0)];
                break;
            default:
                NSLog(@"ERROR in creating armor, armor type not accepted.");
        }
    }
    return self;
}
- (void) setArmorProperties:(NSNumber *)at and:(NSNumber *)missilePen and:(NSNumber *)minManeuver and:(NSNumber *)maxManeuver and:(NSNumber *)quPen
{
    _armorType = at;
    _armorMissileAttackPenalty = missilePen;
    _armorMinimumManeuverModifier = minManeuver;
    _armorMaximumManeuverModifier = maxManeuver;
    _armorQuicknessPenalty = quPen;
}

@end
