/*
 *  iRMEvent.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * The purpose with this is to make an event, that can either be used by the GM to keep track of what is going on at different locations or with different persons/objects, or as a record of what is known. Events are also used in the players journal along with handouts, as a sort of dated information, and a player can append his own notes to the event (GMs will always have access to players notes, other players will only be able to see own notes. GMs can append information to each player notes as GM addendum)
 *
 */

#import <Foundation/Foundation.h>
#import "iRMLiving.h"
#import "iRMCharacter.h"
#import "iRMLocation.h"
#import "iRMObject.h"
#import "iRMSkill.h"

enum {
    EVENT_INVALID = -1,
    EVENT_GENERAL = 0,
    EVENT_CAMPAIGN,
    EVENT_CHARACTER_BACKGROUND,
    EVENT_CHARACTER_TO_REMEMBER,
    EVENT_WAR,
    EVENT_RELIGIOUS_MINOR,
    EVENT_RELIGIOUS_AVERAGE,
    EVENT_RELIGIOUS_MAJOR,
    EVENT_RELIGIOUS_MIRACLE,
    EVENT_DEITY_MINOR,
    EVENT_DEITY_AVERAGE,
    EVENT_DEITY_MAJOR,
    EVENT_PLACE_MINOR,
    EVENT_PLACE_AVERAGE,
    EVENT_PLACE_MAJOR,
    EVENT_NOBLE_BIRTH,
    EVENT_NOBLE_DEATH,
    EVENT_NOBLE_MINOR,
    EVENT_NOBLE_AVERAGE,
    EVENT_NOBLE_MAJOR,
    EVENT_RULER_BIRTH,
    EVENT_RULER_DEATH,
    EVENT_RULER_CORONATION,
    EVENT_RULER_MINOR,
    EVENT_RULER_AVERAGE,
    EVENT_RULER_MAJOR,
    EVENT_ITEM_ARTEFACT,
    EVENT_NPC,
    EVENT_MONSTER,
    EVENT_GEOLOGICAL
};

@interface iRMEvent : NSObject

@property NSDate *eventStartDate; // Mandatory (gametime)
@property NSDate *eventEndDate; // If the event have timespan (e.g. a war)
@property NSNumber *eventType; // Event type, for filtering, visualization with colour, etc
@property NSMutableSet *eventPersons; // List of persons affected or mentioned
@property NSMutableSet *eventLocations; // List of locations affected or mentioned
@property NSMutableSet *eventItems; // list of items affected or mentioned
@property (nonatomic) NSString *eventTitle; // Title for searching and visualization
@property NSMutableString *eventDescription; // A description in words - lore knowledge
@property NSMutableString *eventGMNote; // GM notes on a particular event
@property NSMutableDictionary *eventLores; // Dictionary [Lore skills:  difficulty]
//@property iRMSkill *eventLoreSkill; // Lore skill

- (void) bardicKnowledge:(iRMSkill *)loreSkill and:(int *)difficulty;
- (void) librarySearch:(iRMSkill *)loreSkill and:(int *)difficulty;
- (void) learnLore:(iRMLiving *)player;
- (int) getDifficulty:(iRMSkill *)loreSkill;
- (void) addLoreSkill:(iRMSkill *)loreSkill and:(int *)difficulty;
- (void) addPerson:(iRMLiving *)person;
- (void) addPersonFromString:(NSString *)person;
- (void) addLocation:(iRMLocation *)location;
- (void) addItem:(iRMObject *)item;

- (void) addToTimeline;
- (NSString *) getEventType;

@end
