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
            return NSLocalizedString(@"Invalid Place", @"Invalid Location Type");
        case PLACE_VILLAGE:
            return NSLocalizedString(@"Village Place", @"Village Location Type");
        case PLACE_TOWN:
            return NSLocalizedString(@"Town Place", @"Town Location Type");
        case PLACE_CITY:
            return NSLocalizedString(@"City Place", @"City Location Type");
        case PLACE_METROPOL:
            return NSLocalizedString(@"Metropol Place", @"Metropol Location Type");
        case PLACE_SPRAWL:
            return NSLocalizedString(@"Sprawl Place", @"Sprawl Location Type");
        case PLACE_CAPITAL:
            return NSLocalizedString(@"Capital Place", @"Capital Location Type");
        case PLACE_HUT:
            return NSLocalizedString(@"Hut Place", @"Hut Location Type");
        case PLACE_HOUSE:
            return NSLocalizedString(@"House Place", @"House Location Type");
        case PLACE_SQUARE:
            return NSLocalizedString(@"Placa Place", @"Placa/Square Location Type");
        case PLACE_FARM:
            return NSLocalizedString(@"Farm Place", @"Farm Location Type");
        case PLACE_TOWER:
            return NSLocalizedString(@"Tower Place", @"Tower Location Type");
        case PLACE_DEFENCE:
            return NSLocalizedString(@"Defence Place", @"Defence Location Type");
        case PLACE_BATTLEFIELD:
            return NSLocalizedString(@"Battlefield Place", @"Battlefield Location Type");
        case PLACE_FORT:
            return NSLocalizedString(@"Fort Place", @"Fort Location Type");
        case PLACE_CASTLE:
            return NSLocalizedString(@"Castle Place", @"Castle Location Type");
        case PLACE_VILLA:
            return NSLocalizedString(@"Villa Place", @"Villa Location Type");
        case PLACE_COUNTY:
            return NSLocalizedString(@"County Place", @"County Location Type");
        case PLACE_BARONY:
            return NSLocalizedString(@"Barony Place", @"Barony Location Type");
        case PLACE_DUTCHY:
            return NSLocalizedString(@"Dutchy Place", @"Dutchy Location Type");
        case PLACE_PRINCIPALITY:
            return NSLocalizedString(@"Principality Place", @"Principality Location Type");
        case PLACE_KINGDOM:
            return NSLocalizedString(@"Kingdom Place", @"Kingdom Location Type");
        case PLACE_EMPIRE:
            return NSLocalizedString(@"Empire Place", @"Empire Location Type");
        case PLACE_FIELD:
            return NSLocalizedString(@"Field Place", @"Field Location Type");
        case PLACE_FOREST:
            return NSLocalizedString(@"Forest Place", @"Forest Location Type");
        case PLACE_HILL:
            return NSLocalizedString(@"Hill Place", @"Hill Location Type");
        case PLACE_MOUNTAIN:
            return NSLocalizedString(@"Mountain Place", @"Mountain Location Type");
        case PLACE_RUIN:
            return NSLocalizedString(@"Ruin Place", @"Ruin Location Type");
        case PLACE_CEMITERY:
            return NSLocalizedString(@"Cemitery Place", @"Cemitery Location Type");
        case PLACE_TEMPLE:
            return NSLocalizedString(@"Temple Place", @"Temple Location Type");
        case PLACE_RIVER:
            return NSLocalizedString(@"River Place", @"River Location Type");
        case PLACE_FORD:
            return NSLocalizedString(@"Ford Place", @"Ford Location Type");
        case PLACE_CAVE_ENTRANCE:
            return NSLocalizedString(@"Cave Entrance Place", @"Cave Entrance Location Type");
        case PLACE_HAVEN:
            return NSLocalizedString(@"Haven Place", @"Haven Location Type");
        case PLACE_LAKE:
            return NSLocalizedString(@"Lake Place", @"Lake Location Type");
        case PLACE_OCEAN:
            return NSLocalizedString(@"Ocean Place", @"Ocean Location Type");
        default:
            return NSLocalizedString(@"Unknown Place", @"Unknown Location Type");
    }
}
- (NSString *) checkLocationType:(NSNumber *)locationCheckType
{
    switch ([locationCheckType intValue]) {
        case PLACE_INVALID:
            return NSLocalizedString(@"Invalid Place", @"Invalid Location Type");
        case PLACE_VILLAGE:
            return NSLocalizedString(@"Village Place", @"Village Location Type");
        case PLACE_TOWN:
            return NSLocalizedString(@"Town Place", @"Town Location Type");
        case PLACE_CITY:
            return NSLocalizedString(@"City Place", @"City Location Type");
        case PLACE_METROPOL:
            return NSLocalizedString(@"Metropol Place", @"Metropol Location Type");
        case PLACE_SPRAWL:
            return NSLocalizedString(@"Sprawl Place", @"Sprawl Location Type");
        case PLACE_CAPITAL:
            return NSLocalizedString(@"Capital Place", @"Capital Location Type");
        case PLACE_HUT:
            return NSLocalizedString(@"Hut Place", @"Hut Location Type");
        case PLACE_HOUSE:
            return NSLocalizedString(@"House Place", @"House Location Type");
        case PLACE_SQUARE:
            return NSLocalizedString(@"Placa Place", @"Placa/Square Location Type");
        case PLACE_FARM:
            return NSLocalizedString(@"Farm Place", @"Farm Location Type");
        case PLACE_TOWER:
            return NSLocalizedString(@"Tower Place", @"Tower Location Type");
        case PLACE_DEFENCE:
            return NSLocalizedString(@"Defence Place", @"Defence Location Type");
        case PLACE_BATTLEFIELD:
            return NSLocalizedString(@"Battlefield Place", @"Battlefield Location Type");
        case PLACE_FORT:
            return NSLocalizedString(@"Fort Place", @"Fort Location Type");
        case PLACE_CASTLE:
            return NSLocalizedString(@"Castle Place", @"Castle Location Type");
        case PLACE_VILLA:
            return NSLocalizedString(@"Villa Place", @"Villa Location Type");
        case PLACE_COUNTY:
            return NSLocalizedString(@"County Place", @"County Location Type");
        case PLACE_BARONY:
            return NSLocalizedString(@"Barony Place", @"Barony Location Type");
        case PLACE_DUTCHY:
            return NSLocalizedString(@"Dutchy Place", @"Dutchy Location Type");
        case PLACE_PRINCIPALITY:
            return NSLocalizedString(@"Principality Place", @"Principality Location Type");
        case PLACE_KINGDOM:
            return NSLocalizedString(@"Kingdom Place", @"Kingdom Location Type");
        case PLACE_EMPIRE:
            return NSLocalizedString(@"Empire Place", @"Empire Location Type");
        case PLACE_FIELD:
            return NSLocalizedString(@"Field Place", @"Field Location Type");
        case PLACE_FOREST:
            return NSLocalizedString(@"Forest Place", @"Forest Location Type");
        case PLACE_HILL:
            return NSLocalizedString(@"Hill Place", @"Hill Location Type");
        case PLACE_MOUNTAIN:
            return NSLocalizedString(@"Mountain Place", @"Mountain Location Type");
        case PLACE_RUIN:
            return NSLocalizedString(@"Ruin Place", @"Ruin Location Type");
        case PLACE_CEMITERY:
            return NSLocalizedString(@"Cemitery Place", @"Cemitery Location Type");
        case PLACE_TEMPLE:
            return NSLocalizedString(@"Temple Place", @"Temple Location Type");
        case PLACE_RIVER:
            return NSLocalizedString(@"River Place", @"River Location Type");
        case PLACE_FORD:
            return NSLocalizedString(@"Ford Place", @"Ford Location Type");
        case PLACE_CAVE_ENTRANCE:
            return NSLocalizedString(@"Cave Entrance Place", @"Cave Entrance Location Type");
        case PLACE_HAVEN:
            return NSLocalizedString(@"Haven Place", @"Haven Location Type");
        case PLACE_LAKE:
            return NSLocalizedString(@"Lake Place", @"Lake Location Type");
        case PLACE_OCEAN:
            return NSLocalizedString(@"Ocean Place", @"Ocean Location Type");
        default:
            return NSLocalizedString(@"Unknown Place", @"Unknown Location Type");
    }

}

@end
