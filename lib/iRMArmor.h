/*
 *  iRMArmor.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 13.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 */

#import <Foundation/Foundation.h>
#import "iRMObject.h"

@interface iRMArmor : iRMObject

@property NSNumber *armorType;
@property NSNumber *armorMissileAttackPenalty;
@property NSNumber *armorMinimumManeuverModifier;
@property NSNumber *armorMaximumManeuverModifier;
@property NSNumber *armorQuicknessPenalty;

- (id)initWithAT:(NSNumber *)at;
- (void)setArmorProperties:(NSNumber *)at and:(NSNumber *)missilePen and:(NSNumber *)minManeuver and:(NSNumber *)maxManeuver and:(NSNumber *)quPen;

@end
