/*
 *  iRMTerrain.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 10.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * The terrain object is mainly meant for map painting, but is also a guide to generating a 3d scene of a location. Terrain also indicates what animals, monsters, plants, etc that can be found in that location. CLIMATE_CODE and LOCALE_CODE are based on the codes given in RMSS with adjustments for some added climates from aditional literature.
 *
 */

#import <Foundation/Foundation.h>

enum {
    CLIMATE_ARID = 'a',
    CLIMATE_COLD = 'c',
    CLIMATE_EVERLASTING_COLD = 'e',
    CLIMATE_FRIGID = 'f',
    CLIMATE_HOT_AND_HUMID = 'h',
    CLIMATE_COLD_AVERAGE = 'k',
    CLIMATE_MILD_TEMPERATE = 'm',
    CLIMATE_HOT_AVERAGE = 'n',
    CLIMATE_SEMI_ARID = 's',
    CLIMATE_COOL_TEMPERATE = 't'
    };
enum  {
    LOCALE_ALPINE = 'A',
    LOCALE_BREAKS_WADIS = 'B',
    LOCALE_CONIFEROUS = 'C',
    LOCALE_DECIDUOUS = 'D',
    LOCALE_ENCHANTED = 'E',
    LOCALE_FRESHWATER_COAST = 'F',
    LOCALE_GLACIER = 'G',
    LOCALE_HEATH = 'H',
    LOCALE_TROPICAL_ISLE_REEF = 'I',
    LOCALE_JUNGLE = 'J',
    LOCALE_CROSS_OVER = 'K',
    LOCALE_LAKE_RIVER = 'L',
    LOCALE_MOUNTAIN = 'M',
    LOCALE_NEAR_TOWN = 'N',
    LOCALE_OCEAN = 'O',
    LOCALE_PLAIN = 'P', // combines TALL_GRASS and SHORT_GRASS
    LOCALE_OASIS = 'Q',
    LOCALE_ROCKY = 'R',
    LOCALE_SHORT_GRASS = 'S', // special form of PLAIN
    LOCALE_TALL_GRASS = 'T', // special form of PLAIN
    LOCALE_UNDERGROUND = 'U',
    LOCALE_VOLCANIC = 'V',
    LOCALE_WASTE = 'W',
    LOCALE_CAVE_COMPLEX = 'X',
    LOCALE_BATTLEFIELD = 'Y',
    LOCALE_DESERT = 'Z',
    /* Other */
    LOCALE_MARSH_SWAMP,
    LOCALE_TUNDRA,
    LOCALE_RURAL_CULTIVATED,
    LOCALE_CAVE_ENTRANCE,
    LOCALE_BURIAL_GROUND,
    LOCALE_RUINS
    };
/*
 * A herb or animal that inherit LOCATE_PLAIN implies LOCATE_SHORT_GRASS and LOCATE_TALL_GRASS as well
 *
 * A locale that is LOCATE_PLAIN will also accept animals and herbs of LOCATE_SHORT_GRASS and LOCATE_TALL_GRASS
 *
 */

@interface iRMTerrain : NSObject

@property NSString *climaCode;
@property NSString *localeCode;

- (id) init;

- (NSString *) queryLocale;
- (NSString *) queryClimate;

- (BOOL) localeHasType: (char) localeType;
- (BOOL) climateHasType: (char) climateType;

@end
