/*
 *  iRMTerrain.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 10.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
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

- (NSString *) getLocaleTypeString:(char)localeType
{
    switch (localeType) {
        case LOCALE_ALPINE:
            return  NSLocalizedString(@"Alpine Locale", @"Alpine Locale Type");
        case LOCALE_BREAKS_WADIS:
            return NSLocalizedString(@"Breaks Locale", @"Breaks/Wadis Locale Type");
        case LOCALE_CONIFEROUS:
            return NSLocalizedString(@"Coniferous Locale", @"Coniferous Locale Type");
        case LOCALE_DECIDUOUS:
            return NSLocalizedString(@"Deciduous Locale", @"Deciduous Locale Type");
        case LOCALE_ENCHANTED:
            return NSLocalizedString(@"Enchanted Locale", @"Enchanted Locale Type");
        case LOCALE_FRESHWATER_COAST:
            return NSLocalizedString(@"Freshwater Coast Locale", @"Freshwater Coast Locale Type");
        case LOCALE_GLACIER:
            return NSLocalizedString(@"Glacier Locale", @"Glacier Locale Type");
        case LOCALE_HEATH:
            return NSLocalizedString(@"Heath Locale", @"Heath Locale Type");
        case LOCALE_TROPICAL_ISLE_REEF:
            return NSLocalizedString(@"Tropical Isle Locale", @"Tropical Isle/Reef Locale Type");
        case LOCALE_JUNGLE:
            return NSLocalizedString(@"Jungle Locale", @"Jungle Locale Type");
        case LOCALE_CROSS_OVER:
            return NSLocalizedString(@"Cross Over Locale", @"Cross Over Locale Type");
        case LOCALE_LAKE_RIVER:
            return NSLocalizedString(@"Lake Locale", @"Lake/River Locale Type");
        case LOCALE_MOUNTAIN:
            return NSLocalizedString(@"Mountain Locale", @"Mountain Locale Type");
        case LOCALE_NEAR_TOWN:
            return NSLocalizedString(@"Near Town Locale", @"Near Town Locale Type");
        case LOCALE_OCEAN:
            return NSLocalizedString(@"Ocean Locale", @"Ocean Locale Type");
        case LOCALE_PLAIN: // combines TALL_GRASS and SHORT_GRASS
            return NSLocalizedString(@"Plain Locale", @"Plain Locale (mixed tall and short grass) Type");
        case LOCALE_OASIS:
            return NSLocalizedString(@"Oasis Locale", @"Oasis Locale Type");
        case LOCALE_ROCKY:
            return NSLocalizedString(@"Rocky Locale", @"Rocky Locale Type");
        case LOCALE_SHORT_GRASS: // special form of PLAIN
            return NSLocalizedString(@"Short Grass Locale", @"Plains with Short Grass Locale Type");
        case LOCALE_TALL_GRASS: // special form of PLAIN
            return NSLocalizedString(@"Tall Grass Locale", @"Plains with Tall Grass Locale Type");
        case LOCALE_UNDERGROUND:
            return NSLocalizedString(@"Underground Locale", @"Underground Locale Type");
        case LOCALE_VOLCANIC:
            return NSLocalizedString(@"Volcanic Locale", @"Volcanic Locale Type");
        case LOCALE_WASTE:
            return NSLocalizedString(@"Waste Locale", @"Waste Locale Type");
        case LOCALE_CAVE_COMPLEX:
            return NSLocalizedString(@"Cave Complex Locale", @"Cave Complex Locale Type");
        case LOCALE_BATTLEFIELD:
            return NSLocalizedString(@"Battlefield Locale", @"Battlefield Locale Type");
        case LOCALE_DESERT:
            return NSLocalizedString(@"Desert Locale", @"Desert Locale Type");
        case LOCALE_MARSH_SWAMP:
            return NSLocalizedString(@"Marsh Locale", @"Marsh/Swamp Locale Type");
        case LOCALE_TUNDRA:
            return NSLocalizedString(@"Tundra Locale", @"Tundra Locale Type");
        case LOCALE_RURAL_CULTIVATED:
            return NSLocalizedString(@"Rural Locale", @"Rural/Cultivated Locale Type");
        case LOCALE_CAVE_ENTRANCE:
            return NSLocalizedString(@"Cave Entrance Locale", @"Cave Entrance Locale Type");
        case LOCALE_BURIAL_GROUND:
            return NSLocalizedString(@"Burrial Locale", @"Burrial Ground Locale Type");
        case LOCALE_RUINS:
            return NSLocalizedString(@"Ruins Locale", @"Ruins Locale Type");
        default:
            return NSLocalizedString(@"Default Locale", @"Unknown Locale Type");
    }
}
- (NSString *) getClimateTypeString:(char)climateType
{
    switch (climateType) {
        case CLIMATE_ARID:
            return  NSLocalizedString(@"Arid Climate", @"Arid Climate Type");
        case CLIMATE_COLD:
            return NSLocalizedString(@"Cold Climate", @"Cold Climate Type");
        case CLIMATE_EVERLASTING_COLD:
            return NSLocalizedString(@"EverCold Climate", @"Everlasting Cold Climate Type");
        case CLIMATE_FRIGID:
            return NSLocalizedString(@"Frigid Climate", @"Frigid Climate Type");
        case CLIMATE_HOT_AND_HUMID:
            return NSLocalizedString(@"Hot&Humid Climate", @"Hot & Humid Climate Type");
        case CLIMATE_COLD_AVERAGE:
            return NSLocalizedString(@"Cold/Average Climate", @"Cold/Average Climate Type");
        case CLIMATE_MILD_TEMPERATE:
            return NSLocalizedString(@"Mild/Temp Climate", @"Mild/Temperate Climate Type");
        case CLIMATE_HOT_AVERAGE:
            return NSLocalizedString(@"Hot/Average Climate", @"Hot/Average Climate Type");
        case CLIMATE_SEMI_ARID:
            return NSLocalizedString(@"Semi Arid Climate", @"Semi Arid Climate Type");
        case CLIMATE_COOL_TEMPERATE:
            return NSLocalizedString(@"Cool/Temp Climate", @"Cool/Temperate Climate Type");
        default:
            return NSLocalizedString(@"Default Climate", @"Unknown Climate Type");
    }
  
}

@end
