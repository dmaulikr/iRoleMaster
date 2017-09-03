/*
 *  iRMCalendar.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * The purpose of this is to create a calendar-like presentation to be used within a game, where dates relates to the game-time dates. The objective is to use NSDate objects as representation of instance of time within the game environemnt. The game configuration should enable to create a calendar format (i.e. months/year, day/month, leap-years, begining and end of time era's, etc).
 *
 * This object should work as a regular calendar in all aspects, though it should allow for the GM to define all aspects of it. I will try to make a few pre-defined calendars for the GM to select, in addition to the ability create his own calendars.
 *
 * A game should be able to handle multiple calendars, but they should all align to a single timeline. Different races/cultures should be able to start/end year at different times, but ingame references to a specific event, even though presented with different calendars, should point to the same point on the timeline.
 *
 * Things that must be possible to define:
 *     * Begining of timeline (date 0)
 *     * Length of year
 *     * Number (and names) of months
 *     * Number (and names) of days in a week
 *     * Number of days in each month
 *     * Special dates, i.e. days between month
 *     * Date interval observed by moon(s)
 *     * Date interval observed by sun(s)
 *     * Special dates as holidays/festivals/days of sacrifice/worship
 *     * Hours in days
 *     * Minutes in hours
 *     * Seconds in Minutes
 *     * Observed sub-second divisions
 *
 * Examples:
 * Star Trek Star-date calendar
 * Star Trek: Bejoran system have 26 hour day cycle
 * Toliken Middle Earth 12 Months of 30 days + 2 days Yüle and 2 days Summer Solstice, totaling of 364 day year
 * Tolkien calendar was divided in 3 (4) time epocs
 * Discworld where the years was named after animals (always Year of the Wombat?), and not numbered
 *
 */

#import <Foundation/Foundation.h>

//@interface iRMCalendar : NSObject //<NSCalendar>
@interface iRMCalendar : NSCalendar

- (NSDate *) getGameDate;

@end
