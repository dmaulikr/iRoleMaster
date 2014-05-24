/*
 *  iRMJournalEntry.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * The actual entries in the players journal, allowing each player to write his own comments to game events and campaign handouts known to him, and the GM write personal addendums to the player.
 *
 * Each entry should hold either an Event or a Handout, though a player can create a 'void' entry as well. This should create an event on that specific time. This event will be called something like "<Character Name> void event (<GameDate)", and the GM can than later if desired create a proper event description and share it with other players.
 */

#import <Foundation/Foundation.h>
#import "iRMEvent.h"
#import "iRMHandout.h"

@interface iRMJournalEntry : NSObject

@property NSMutableDictionary *journalEntryObject;

- (void) setEvent:(iRMEvent *)event;
- (void) setHandout:(iRMHandout *)handout;
- (void) updatePlayerNote:(NSString *)note; // Players personal notes
- (void) updateGMAddendum:(NSString *)addendum; // Added information from GM to particular player


- (iRMEvent *) getEvent;
- (iRMHandout *) getHandout;
- (NSString *) getPlayerNote;
- (NSString *) getGMAddendum;

@end
