/*
 *  iRMLocation.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 */

#import "iRMLocation.h"
#import "iRMHex.h"

@implementation iRMLocation

- (id) init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void) addMapHex:(iRMHex *)hex
{
    [_locationMapHex addObject:hex];
}
- (void) addLocation:(iRMLocation *)location
{
    [_locationCollection addObject:location];
}

- (NSString *) getLocationTypeString
{
    switch ([_locationType intValue]) {
        case PLACE_INVALID:
            return NSLocalizedString(@"Invalid", @"Invalid Location Type");
        case PLACE_VILLAGE:
            return NSLocalizedString(@"Village", @"Village Location Type");
        case PLACE_TOWN:
            return NSLocalizedString(@"Town", @"Town Location Type");
        case PLACE_CITY:
            return NSLocalizedString(@"City", @"City Location Type");
        case PLACE_METROPOL:
            return NSLocalizedString(@"Metropol", @"Metropol Location Type");
        case PLACE_SPRAWL:
            return NSLocalizedString(@"Sprawl", @"Sprawl Location Type");
        case PLACE_CAPITAL:
            return NSLocalizedString(@"Capital", @"Capital Location Type");
        case PLACE_HUT:
            return NSLocalizedString(@"Hut", @"Hut Location Type");
        case PLACE_HOUSE:
            return NSLocalizedString(@"House", @"House Location Type");
        case PLACE_SQUARE:
            return NSLocalizedString(@"Placa", @"Placa/Square Location Type");
        case PLACE_FARM:
            return NSLocalizedString(@"Farm", @"Farm Location Type");
        case PLACE_TOWER:
            return NSLocalizedString(@"Tower", @"Tower Location Type");
        case PLACE_DEFENCE:
            return NSLocalizedString(@"Defence", @"Defence Location Type");
        case PLACE_BATTLEFIELD:
            return NSLocalizedString(@"Battlefield", @"Battlefield Location Type");
        case PLACE_FORT:
            return NSLocalizedString(@"Fort", @"Fort Location Type");
        case PLACE_CASTLE:
            return NSLocalizedString(@"Castle", @"Castle Location Type");
        case PLACE_VILLA:
            return NSLocalizedString(@"Villa", @"Villa Location Type");
        case PLACE_COUNTY:
            return NSLocalizedString(@"County", @"County Location Type");
        case PLACE_BARONY:
            return NSLocalizedString(@"Barony", @"Barony Location Type");
        case PLACE_DUTCHY:
            return NSLocalizedString(@"Dutchy", @"Dutchy Location Type");
        case PLACE_PRINCIPALITY:
            return NSLocalizedString(@"Principality", @"Principality Location Type");
        case PLACE_KINGDOM:
            return NSLocalizedString(@"Kingdom", @"Kingdom Location Type");
        case PLACE_EMPIRE:
            return NSLocalizedString(@"Empire", @"Empire Location Type");
        case PLACE_FIELD:
            return NSLocalizedString(@"Field", @"Field Location Type");
        case PLACE_FOREST:
            return NSLocalizedString(@"Forest", @"Forest Location Type");
        case PLACE_HILL:
            return NSLocalizedString(@"Hill", @"Hill Location Type");
        case PLACE_MOUNTAIN:
            return NSLocalizedString(@"Mountain", @"Mountain Location Type");
        case PLACE_RUIN:
            return NSLocalizedString(@"Ruin", @"Ruin Location Type");
        case PLACE_CEMITERY:
            return NSLocalizedString(@"Cemitery", @"Cemitery Location Type");
        case PLACE_TEMPLE:
            return NSLocalizedString(@"Temple", @"Temple Location Type");
        case PLACE_RIVER:
            return NSLocalizedString(@"River", @"River Location Type");
        case PLACE_FORD:
            return NSLocalizedString(@"Ford", @"Ford Location Type");
        case PLACE_CAVE_ENTRANCE:
            return NSLocalizedString(@"Cave Entrance", @"Cave Entrance Location Type");
        case PLACE_HAVEN:
            return NSLocalizedString(@"Haven", @"Haven Location Type");
        case PLACE_LAKE:
            return NSLocalizedString(@"Lake", @"Lake Location Type");
        case PLACE_OCEAN:
            return NSLocalizedString(@"Ocean", @"Ocean Location Type");
        default:
            return NSLocalizedString(@"Unknown", @"Unknown Location Type");
    }
}
- (NSString *) checkLocationType:(NSNumber *)locationCheckType
{
    switch ([locationCheckType intValue]) {
        case PLACE_INVALID:
            return NSLocalizedString(@"Invalid", @"Invalid Location Type");
        case PLACE_VILLAGE:
            return NSLocalizedString(@"Village", @"Village Location Type");
        case PLACE_TOWN:
            return NSLocalizedString(@"Town", @"Town Location Type");
        case PLACE_CITY:
            return NSLocalizedString(@"City", @"City Location Type");
        case PLACE_METROPOL:
            return NSLocalizedString(@"Metropol", @"Metropol Location Type");
        case PLACE_SPRAWL:
            return NSLocalizedString(@"Sprawl", @"Sprawl Location Type");
        case PLACE_CAPITAL:
            return NSLocalizedString(@"Capital", @"Capital Location Type");
        case PLACE_HUT:
            return NSLocalizedString(@"Hut", @"Hut Location Type");
        case PLACE_HOUSE:
            return NSLocalizedString(@"House", @"House Location Type");
        case PLACE_SQUARE:
            return NSLocalizedString(@"Placa", @"Placa/Square Location Type");
        case PLACE_FARM:
            return NSLocalizedString(@"Farm", @"Farm Location Type");
        case PLACE_TOWER:
            return NSLocalizedString(@"Tower", @"Tower Location Type");
        case PLACE_DEFENCE:
            return NSLocalizedString(@"Defence", @"Defence Location Type");
        case PLACE_BATTLEFIELD:
            return NSLocalizedString(@"Battlefield", @"Battlefield Location Type");
        case PLACE_FORT:
            return NSLocalizedString(@"Fort", @"Fort Location Type");
        case PLACE_CASTLE:
            return NSLocalizedString(@"Castle", @"Castle Location Type");
        case PLACE_VILLA:
            return NSLocalizedString(@"Villa", @"Villa Location Type");
        case PLACE_COUNTY:
            return NSLocalizedString(@"County", @"County Location Type");
        case PLACE_BARONY:
            return NSLocalizedString(@"Barony", @"Barony Location Type");
        case PLACE_DUTCHY:
            return NSLocalizedString(@"Dutchy", @"Dutchy Location Type");
        case PLACE_PRINCIPALITY:
            return NSLocalizedString(@"Principality", @"Principality Location Type");
        case PLACE_KINGDOM:
            return NSLocalizedString(@"Kingdom", @"Kingdom Location Type");
        case PLACE_EMPIRE:
            return NSLocalizedString(@"Empire", @"Empire Location Type");
        case PLACE_FIELD:
            return NSLocalizedString(@"Field", @"Field Location Type");
        case PLACE_FOREST:
            return NSLocalizedString(@"Forest", @"Forest Location Type");
        case PLACE_HILL:
            return NSLocalizedString(@"Hill", @"Hill Location Type");
        case PLACE_MOUNTAIN:
            return NSLocalizedString(@"Mountain", @"Mountain Location Type");
        case PLACE_RUIN:
            return NSLocalizedString(@"Ruin", @"Ruin Location Type");
        case PLACE_CEMITERY:
            return NSLocalizedString(@"Cemitery", @"Cemitery Location Type");
        case PLACE_TEMPLE:
            return NSLocalizedString(@"Temple", @"Temple Location Type");
        case PLACE_RIVER:
            return NSLocalizedString(@"River", @"River Location Type");
        case PLACE_FORD:
            return NSLocalizedString(@"Ford", @"Ford Location Type");
        case PLACE_CAVE_ENTRANCE:
            return NSLocalizedString(@"Cave Entrance", @"Cave Entrance Location Type");
        case PLACE_HAVEN:
            return NSLocalizedString(@"Haven", @"Haven Location Type");
        case PLACE_LAKE:
            return NSLocalizedString(@"Lake", @"Lake Location Type");
        case PLACE_OCEAN:
            return NSLocalizedString(@"Ocean", @"Ocean Location Type");
        default:
            return NSLocalizedString(@"Unknown", @"Unknown Location Type");
    }

}

@end
