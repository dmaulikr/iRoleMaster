/*
 *  iRMLog.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * This is meant as an automated log, that remembers gamefunction events (not necessarily worth being part of the timeline). It is meant as a tool to log necessary information to avoid cheating, or to detect faults in the program. It is encouraged that all spell casting, extreme maneuvers, critical hits given and received, kills, etc are logged
 *
 */

#import <Foundation/Foundation.h>
#import "iRMCharacter.h"

@interface iRMLog : NSObject

@property NSDate *logRealDate;
@property NSDate *logGameDate;
@property iRMCharacter *logCharacter;
@property NSString *logDescription;

- (id) broadcast;

@end
