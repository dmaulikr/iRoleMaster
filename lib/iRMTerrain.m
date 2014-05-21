/*
 *  iRMTerrain.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 10.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * The terrain object is mainly meant for map painting, but is also a guide to generating a 3d scene of a location. Terrain also indicates what animals, monsters, plants, etc that can be found in that location. CLIMATE_CODE and LOCALE_CODE are based on the codes given in RMSS with adjustments for some added climates from aditional literature.
 *
 */

#import "iRMTerrain.h"

@implementation iRMTerrain

- (id) init
{
    self = [super init];
    
    if (self) {
        
    }
    return self;
}

- (NSString *) queryLocale
{
    return _localeCode;
}
- (NSString *) queryClimate
{
    return _climaCode;
}

- (BOOL) localeHasType:(char)localeType
{
    /* Need to make code to check if localeType is in string _localeCode */
    return NO;
}
- (BOOL) climateHasType:(char)climateType
{
    /* Need to make code to check if climateType is in string _climateCode */
    return NO;
}

@end
