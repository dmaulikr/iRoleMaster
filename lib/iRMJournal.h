/*
 *  iRMJournal.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * This is the collection of Events and Handnotes received by a player, it includes a timeline of events where the player can add new events on the *now* (current time), and maintain all previous events, a set of all handouts received, all with the players personal notes and GM addendums
 *
 * For the players, the journal in addition to being a diary of his events, can also serve as a timeline of his experiences.
 *
 * Use iRMJournalEntry to add entries in the journal. iRMJournalEntry adds the appropriate iRMEvent or iRMHandout object.
 */

#import <Foundation/Foundation.h>
#import "iRMEvent.h"
#import "iRMHandout.h"
#import "iRMCharacter.h"
#import "iRMJournalEntry.h"

@class iRMCharacter;

@interface iRMJournal : NSObject

@property NSMutableSet *journalEntry;
@property (retain) iRMCharacter *journalOwner;

- (void) addEntry:(iRMJournalEntry *)entry;

@end
