/*
 *  iRMEvent.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 */

#import "iRMEvent.h"
#import "iRMLiving.h"
#import "iRMCharacter.h"
#import "iRMLocation.h"
#import "iRMObject.h"
#import "iRMLog.h"

@implementation iRMEvent

- (id) init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void) setEventTitle:(NSString *)eventTitle and:(int)category {
    _eventTitle = [[NSString alloc] initWithString:eventTitle];
    _eventType = [[NSNumber alloc] initWithInt:category];
    iRMLog *newLog = [[iRMLog alloc] initWithLevel:LOG_EVENT_HANDOUT];
    newLog.logDescription = [[NSString alloc] initWithFormat:@"Event created with title: %@", eventTitle];
}

- (void) bardicKnowledge:(iRMSkill *)loreSkill and:(int *)difficulty
{
    
}
- (void) librarySearch:(iRMSkill *)loreSkill and:(int *)difficulty
{
    
}
- (void) learnLore:(iRMLiving *)player
{
    
}
- (void) addLoreSkill:(iRMSkill *)loreSkill and:(int *)difficulty
{
//    [_eventLores addEntriesFromDictionary:loreSkill:difficulty]
}
- (int) getDifficulty:(iRMSkill *)loreSkill
{
    // Make a mapping where each general or specific skill return a difficulty.
    // i.e. an D-Day event would be difficulty 3 in History:World War II, and
    // difficulty 2 in History:Normandie
    return 9; // Absurd difficulty
}
- (void) addPerson:(iRMLiving *)person
{
    [_eventPersons addObject:person];
}
- (void) addPersonFromString:(NSString *)person
{
    [_eventPersons addObject:person];
}
- (void) addLocation:(iRMLocation *)location
{
    [_eventLocations addObject:location];
}
- (void) addItem:(iRMObject *)item
{
    [_eventItems addObject:item];
}
- (void) addToTimeline
{
    // Call timeline: addEvent:self
}
- (NSString *) getEventType;
{
    switch ([_eventType intValue]) {
        case EVENT_INVALID:
            return NSLocalizedString(@"Invalyd Event Type", @"Invalid Event Type");
        case EVENT_GENERAL:
            return NSLocalizedString(@"General Event", @"General Event");
        case EVENT_CAMPAIGN:
            return NSLocalizedString(@"Campaign Event", @"Campaign Event");
        case EVENT_CHARACTER_BACKGROUND:
            return NSLocalizedString(@"Character Background Event", @"Character Background");
        case EVENT_CHARACTER_TO_REMEMBER:
            return NSLocalizedString(@"Character To Remember Event", @"Important Character Event");
        case EVENT_WAR:
            return NSLocalizedString(@"Event War", @"War!!!");
        case EVENT_RELIGIOUS_MINOR:
            return NSLocalizedString(@"Minor Religious Event", @"Minor Religious Event");
        case EVENT_RELIGIOUS_AVERAGE:
            return NSLocalizedString(@"Average Religious Event", @"Average Religious Event");
        case EVENT_RELIGIOUS_MAJOR:
            return NSLocalizedString(@"Major Religious Event", "@Major Religious Event");
        case EVENT_RELIGIOUS_MIRACLE:
            return NSLocalizedString(@"Religious Miracle Event", @"Religious Miracle");
        case EVENT_DEITY_MINOR:
            return NSLocalizedString(@"Minor Deity Event", @"Minor Deity Event");
        case EVENT_DEITY_AVERAGE:
            return NSLocalizedString(@"Average Deity Event", @"Average Deity Event");
        case EVENT_DEITY_MAJOR:
            return NSLocalizedString(@"Major Deity Event", @"Major Deity Event");
        case EVENT_PLACE_MINOR:
            return NSLocalizedString(@"Minor Location Event", @"Minor Location Event");
        case EVENT_PLACE_AVERAGE:
            return NSLocalizedString(@"Average Location Event", @"Average Location Event");
        case EVENT_PLACE_MAJOR:
            return NSLocalizedString(@"Major Location Event", @"Major Location Event");
        case EVENT_NOBLE_BIRTH:
            return NSLocalizedString(@"Noble Birth Event", @"Birth of a Noble");
        case EVENT_NOBLE_DEATH:
            return NSLocalizedString(@"Noble Death Event", @"Death of a Noble");
        case EVENT_NOBLE_MINOR:
            return NSLocalizedString(@"Minor Noble Event", @"Minor Event of a Noble");
        case EVENT_NOBLE_AVERAGE:
            return NSLocalizedString(@"Average Noble Event", @"Average Event of a Noble");
        case EVENT_NOBLE_MAJOR:
            return NSLocalizedString(@"Major Noble Event", @"Major Event of a Noble");
        case EVENT_RULER_BIRTH:
            return NSLocalizedString(@"Ruler Birth Event", @"Birth of a Ruler");
        case EVENT_RULER_DEATH:
            return NSLocalizedString(@"Ruler Death Event", @"Death of a Ruler");
        case EVENT_RULER_CORONATION:
            return NSLocalizedString(@"Ruler Coronation Event", @"Coronation of a Ruler");
        case EVENT_RULER_MINOR:
            return NSLocalizedString(@"Ruler Minor Event", @"Minor Event of a Ruler");
        case EVENT_RULER_AVERAGE:
            return NSLocalizedString(@"Ruler Average Event", @"Averag Event of a Ruler");
        case EVENT_RULER_MAJOR:
            return NSLocalizedString(@"Ruler Major Event", @"Major Event of a Ruler");
        case EVENT_ITEM_ARTEFACT:
            return NSLocalizedString(@"Item/Artefact Event", @"Item/Artefact Event");
        case EVENT_NPC:
            return NSLocalizedString(@"NPC Event", @"Event of an NPC");
        case EVENT_MONSTER:
            return NSLocalizedString(@"Monster Event", @"Event related to Monsters");
        case EVENT_GEOLOGICAL:
            return NSLocalizedString(@"Geological Event", @"Geological Event");
        default:
            return NSLocalizedString(@"General Event", @"General Event");
    }
}


@end
