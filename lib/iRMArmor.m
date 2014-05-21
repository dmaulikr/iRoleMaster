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
            case 1:
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
