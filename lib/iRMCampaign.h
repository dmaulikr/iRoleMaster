/*
 *  iRMCampaign.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * Collects information about the campaign. This is meant as a control, where specific information about the campaign is stored, such as calendar, timeline, handouts, players, npc's, artifacts, etc.
 *
 * This information should not be obvious to the players, but some of this information might be necessary to expose to the player apps and objects.
 */

#import <Foundation/Foundation.h>
#import "iRMCalendar.h"
#import "iRMTimeline.h"
#import "iRMMap.h"

@interface iRMCampaign : NSObject

@property NSString *campaignName;
@property NSString *campaignWorld;

@property iRMTimeline *campaignTimeline;
@property iRMCalendar *campaignCalendar;
@property iRMMap *campaignMap;

@end
