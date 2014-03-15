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
            return @"Invalid";
        case PLACE_VILLAGE:
            return @"Village";
        case PLACE_TOWN:
            return @"Town";
        case PLACE_CITY:
            return @"City";
        case PLACE_METROPOL:
            return @"Metropol";
        case PLACE_SPRAWL:
            return @"Sprawl";
        case PLACE_CAPITAL:
            return @"Capital";
        case PLACE_HUT:
            return @"Hut";
        case PLACE_HOUSE:
            return @"House";
        case PLACE_SQUARE:
            return @"Placa";
        case PLACE_FARM:
            return @"Farm";
        case PLACE_TOWER:
            return @"Tower";
        case PLACE_DEFENCE:
            return @"Defence";
        case PLACE_BATTLEFIELD:
            return @"Battlefield";
        case PLACE_FORT:
            return @"Fort";
        case PLACE_CASTLE:
            return @"Castle";
        case PLACE_VILLA:
            return @"Villa";
        case PLACE_COUNTY:
            return @"County";
        case PLACE_BARONY:
            return @"Barony";
        case PLACE_DUTCHY:
            return @"Dutchy";
        case PLACE_PRINCIPALITY:
            return @"Principality";
        case PLACE_KINGDOM:
            return @"Kingdom";
        case PLACE_EMPIRE:
            return @"Empire";
        case PLACE_FIELD:
            return @"Field";
        case PLACE_FOREST:
            return @"Forest";
        case PLACE_HILL:
            return @"Hill";
        case PLACE_MOUNTAIN:
            return @"Mountain";
        case PLACE_RUIN:
            return @"Ruin";
        case PLACE_CEMITERY:
            return @"Cemitery";
        case PLACE_TEMPLE:
            return @"Temple";
        case PLACE_RIVER:
            return @"River";
        case PLACE_FORD:
            return @"Ford";
        case PLACE_CAVE_ENTRANCE:
            return @"Cave Entrance";
        case PLACE_HAVEN:
            return @"Haven";
        case PLACE_LAKE:
            return @"Lake";
        case PLACE_OCEAN:
            return @"Ocean";
        default:
            return @"Unknown";
    }
}
- (NSString *) checkLocationType:(NSNumber *)locationCheckType
{
    switch ([locationCheckType intValue]) {
        case PLACE_INVALID:
            return @"Invalid";
        case PLACE_VILLAGE:
            return @"Village";
        case PLACE_TOWN:
            return @"Town";
        case PLACE_CITY:
            return @"City";
        case PLACE_METROPOL:
            return @"Metropol";
        case PLACE_SPRAWL:
            return @"Sprawl";
        case PLACE_CAPITAL:
            return @"Capital";
        case PLACE_HUT:
            return @"Hut";
        case PLACE_HOUSE:
            return @"House";
        case PLACE_SQUARE:
            return @"Placa";
        case PLACE_FARM:
            return @"Farm";
        case PLACE_TOWER:
            return @"Tower";
        case PLACE_DEFENCE:
            return @"Defence";
        case PLACE_BATTLEFIELD:
            return @"Battlefield";
        case PLACE_FORT:
            return @"Fort";
        case PLACE_CASTLE:
            return @"Castle";
        case PLACE_VILLA:
            return @"Villa";
        case PLACE_COUNTY:
            return @"County";
        case PLACE_BARONY:
            return @"Barony";
        case PLACE_DUTCHY:
            return @"Dutchy";
        case PLACE_PRINCIPALITY:
            return @"Principality";
        case PLACE_KINGDOM:
            return @"Kingdom";
        case PLACE_EMPIRE:
            return @"Empire";
        case PLACE_FIELD:
            return @"Field";
        case PLACE_FOREST:
            return @"Forest";
        case PLACE_HILL:
            return @"Hill";
        case PLACE_MOUNTAIN:
            return @"Mountain";
        case PLACE_RUIN:
            return @"Ruin";
        case PLACE_CEMITERY:
            return @"Cemitery";
        case PLACE_TEMPLE:
            return @"Temple";
        case PLACE_RIVER:
            return @"River";
        case PLACE_FORD:
            return @"Ford";
        case PLACE_CAVE_ENTRANCE:
            return @"Cave Entrance";
        case PLACE_HAVEN:
            return @"Haven";
        case PLACE_LAKE:
            return @"Lake";
        case PLACE_OCEAN:
            return @"Ocean";
        default:
            return @"Unknown";
    }

}

@end
