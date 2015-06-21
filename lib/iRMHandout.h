/*
 *  iRMHandout.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * Handouts are undated information disclosed to players. A GM should be able to pre-generate handouts while planning a champaign as well as creating them on the fly. A player should be able to append notes to a handout. The GM should always be able to see a players notes, and append information as GM addendum, while other players should not have access to this.
 *
 */

#import <Foundation/Foundation.h>
#import "iRMLiving.h"
#import "iRMLocation.h"
#import "iRMObject.h"

@interface iRMHandout : NSObject

@property NSMutableSet *handoutPersons; // list of persons affected/mentioned
@property NSMutableSet *handoutLocations; // list of locations affected/mentioned
@property NSMutableSet *handoutItems; // list of items affected/mentioned

@property NSString *handoutTitle; // public title
@property NSMutableString *handoutDescription; // public description
@property NSMutableString *handoutGMNote; // only visible to GM, and editable

- (void) addPerson:(iRMLiving *)person;
- (void) addPersonFromString:(NSString *)person;

- (void) addLocation:(iRMLocation *)location;

- (void) addItem:(iRMObject *)item;

- (void) updateDescription:(NSString *)desc;
- (void) updateGMNote:(NSString *)note;

@end
