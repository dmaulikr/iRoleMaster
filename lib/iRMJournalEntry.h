/*
 *  iRMJournalEntry.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * The actual entries in the players journal, allowing each player to write his own comments to game events and campaign handouts known to him, and the GM write personal addendums to the player.
 */

#import <Foundation/Foundation.h>
#import "iRMEvent.h"
#import "iRMHandout.h"

@interface iRMJournalEntry : NSObject

@property NSMutableDictionary *journalEntryObject;

- (void) setEvent:(iRMEvent *)event;
- (void) setHandout:(iRMHandout *)handout;
- (void) updatePlayerNote:(NSString *)note;
- (void) updateGMAddendum:(NSString *)addendum;


- (iRMEvent *) getEvent;

- (iRMHandout *) getHandout;
- (NSString *) getPlayerNote;
- (NSString *) getGMAddendum;

@end
