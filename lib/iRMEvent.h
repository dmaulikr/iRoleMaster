/*
 *  iRMEvent.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * The purpose with this is to make a event, that can either be used by the GM to keep track of what is going on at different locations or with different persons/objects, or as a record of what is known. Events are also used in the players journal along with handouts, as a sort of dated information, and a player can append his own notes to the event (GMs will have access to players notes, other players will only be able to see own notes. GMs can append information to each player notes as GM addendum)
 *
 */

#import <Foundation/Foundation.h>
#import "iRMLiving.h"
#import "iRMLocation.h"
#import "iRMObject.h"

@interface iRMEvent : NSObject

@property NSDate *eventStartDate; // Mandatory
@property NSDate *eventEndDate; // If the event have timespan (e.g. a war)
@property NSMutableSet *eventPersons; // List of persons affected or mentioned
@property NSMutableSet *eventLocations; // List of locations affected or mentioned
@property NSMutableSet *eventItems; // list of items affected or mentioned
@property (nonatomic) NSString *eventTitle; // Title for searching and visualization
@property NSMutableString *eventDescription; // A description in words - lore knowledge

- (void) addEventPerson:(iRMLiving *)person;
- (void) addEventPersonFromString:(NSString *)person;
- (void) addLocation:(iRMLocation *)location;
- (void) addItem:(iRMObject *)item;

@end
