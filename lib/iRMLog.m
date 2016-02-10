/*
 *  iRMLog.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 */

#import "iRMLog.h"
#import "iRMCharacter.h"
#import "iRMCalendar.h"

@implementation iRMLog

- (id) init
{
    self = [super init];
    
    if (self) {
        _logRealDate = [NSDate date];
        //        _logGameDate = [NSDate getGameDate]; // Get the 'now' time in the game
        _logLevel = [[NSNumber alloc] initWithInt:LOG_DEBUG]; // define default log level
    }
    return self;
}
/**
 *  @author Aun Johnsen <skippern@gimnechiske.org>, 16-02-10
 *
 *  Initiates a log entry with a specific log Level
 *
 *  @param logLevel Log Level of entry
 *
 *  @return object ID
 */
- (id) initWithLevel:(int)logLevel
{
    self = [super init];
    
    if (self) {
        _logRealDate = [NSDate date];
        //        _logGameDate = [NSDate getGameDate]; // Get the 'now' time in the game
        _logLevel = [[NSNumber alloc] initWithInt:logLevel];
    }
    return self;
}

/**
 * @author Aun Johnsen <skippern@gimnechiske.org>
 *
 *  The purpose of this function is to broadcast log entries to the notification centre
 *
 *  @return self (log entry)
 */
- (id) broadcast
{
    /*
     * This function has the purpose to transmit this object to a notification center. The Log object doesn't discriminate or prioritize observers.
     */
    return self; //sending my content to a notification center
}

@end
