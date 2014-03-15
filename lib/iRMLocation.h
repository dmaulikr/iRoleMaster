/*
 *  iRMLocation.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * This object refers to a specific map location, for example a position (hex number), a cave, castle, general area, town, river, isle, etc.
 *
 * A location can be a specific hex, or a group of hexes representing a larger area. For instance, a village might be only one hex, a shrine generally is only one hex, while a kingdom is a large collection of hexes.
 */

#import <Foundation/Foundation.h>
#import "iRMHex.h"

enum {
    PLACE_INVALID = -2,
    PLACE_UNKNOWN = -1,
    PLACE_VILLAGE = 0,
    PLACE_TOWN,
    PLACE_CITY,
    PLACE_METROPOL,
    PLACE_SPRAWL,
    PLACE_CAPITAL,
    PLACE_HUT,
    PLACE_HOUSE,
    PLACE_SQUARE,
    PLACE_FARM,
    PLACE_TOWER,
    PLACE_BATTLEFIELD,
    PLACE_DEFENCE,
    PLACE_FORT,
    PLACE_CASTLE,
    PLACE_VILLA,
    PLACE_COUNTY,
    PLACE_BARONY,
    PLACE_DUTCHY,
    PLACE_PRINCIPALITY,
    PLACE_KINGDOM,
    PLACE_EMPIRE,
    PLACE_FIELD,
    PLACE_FOREST,
    PLACE_HILL,
    PLACE_MOUNTAIN,
    PLACE_RUIN,
    PLACE_CEMITERY,
    PLACE_TEMPLE,
    PLACE_RIVER,
    PLACE_FORD,
    PLACE_CAVE_ENTRANCE,
    PLACE_HAVEN,
    PLACE_LAKE,
    PLACE_OCEAN
};

@interface iRMLocation : NSObject

@property NSString *locationName;
@property NSNumber *locationType; // for symbol creation
@property NSMutableSet *locationMapHex;
@property NSMutableSet *locationCollection; // collects smaller locations (i.e. a Kingdom as collection of counties implying that all counties forms part of the kingdom)

- (void) addMapHex:(iRMHex *)hex;
- (void) addLocation:(iRMLocation *)location;

- (NSString *) getLocationTypeString;
- (NSString *) checkLocationType:(NSNumber *)locationCheckType;

@end
