/*
 *  iRMHex.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * This is the individual map hexes.
 * Only the two three most detailed levels are to be defined, further zoom out is derived from "dominant terrain"
 */

#import <Foundation/Foundation.h>

@interface iRMHex : NSObject

@property NSNumber *hexID; // unique ID <- to find again on the map
@property NSNumber *hexClimate; // CLIMATE_* from iRMTerrain.h
@property NSNumber *hexLocate; // LOCATE_* from iRMTerrain.h
@property NSNumber *hexScale; // Scale coresponds with zoom-level, lower number = more details

@end
