/*
 *  iRMLog.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * This is meant as an automated log, that remembers gamefunction events (not necessarily worth being part of the timeline). It is meant as a tool to log necessary information to avoid cheating, or to detect faults in the program. It is encouraged that all spell casting, extreme maneuvers, critical hits given and received, kills, etc are logged
 *
 * The log will have both a real timestamp and a 'in game' timestamp, as well be linked to a character. This is done for filtering purposes, so that with a log analyzing tool (typically for a debugger or a GM) can search for log entries on a certain date, during a certain period on the game, or involving a certain character. The entire log should be available for the GM and for the host server. Each player client should only store the log for that particular player.
 *
 * A player kill player, player cast spell on player or similar event should generate multiple log entries. Even more if area spells are involved. One for each character involved.
 *
 * The location variable is ONLY for area spells, and should be linked to the area onf influence of the area spell. This is a tool for the GM to confirm that area spells have been cast, and specially important for debugging if area spells with delayed effects actually work. If area spells can be resolved as 'multiple targets' this is preferred, as the log will indicate each target in a much better way.
 *
 * Object logs are mostly for broken or destructed special items
 *
 */

#import <Foundation/Foundation.h>
#import "iRMCharacter.h"
#import "iRMCalendar.h"

/**
 List of log levels, to allow filtering of messages.
 */
enum {
    LOG_DEBUG = 0,
    LOG_SERVER_STATUS,
    LOG_SERVER_PLAYER,
    LOG_GM_CREATE,
    LOG_GM_EDITS,
    LOG_GM_NOTES,
    LOG_EVENT_HANDOUT,
    LOG_JOURNAL,
    LOG_TIMELINE,
    LOG_ITEM_BREAK,
    LOG_ITEM_SPELL,
    LOG_LIVING_CREATE,
    LOG_LIVING_LEVEL,
    LOG_LIVING_XP,
    LOG_LIVING_COMBAT,
    LOG_LIVING_COMBAT_FUMBLE,
    LOG_LIVING_SPELL,
    LOG_LIVING_SKILL_SPECTACULAR_FAILURE,
    LOG_LIVING_SKILL_ABSOLUTE_FAILURE,
    LOG_LIVING_SKILL_FAILURE,
    LOG_LIVING_SKILL_UNUSUAL_EVENT,
    LOG_LIVING_SKILL_PARTIAL_SUCCESS,
    LOG_LIVING_SKILL_NEAR_SUCCESS,
    LOG_LIVING_SKILL_UNUSUAL_SUCCESS,
    LOG_LIVING_SKILL_SUCCESS,
    LOG_LIVING_SKILL_ABSOLUTE_SUCCESS,
    LOG_LIVING_POTION,
    LOG_LIVING_DEATH,
    LOG_OTHER
};


@interface iRMLog : NSObject

@property NSNumber *logLevel; // For filtering, log events can hold 5 different levels, so that the amount of SPAM created by logging can be regulated
@property NSDate *logRealDate;
@property NSDate *logGameDate; // Not necessary to invent the wheel if our calendar can utilize NSDate
@property iRMCharacter *logCharacter;
@property iRMLocation *logLocation;
@property iRMObject *logObject;
@property NSString *logDescription;

- (id) initWithLevel:(int)logLevel;

- (id) broadcast;

@end
