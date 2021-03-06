/*
 *  iRMNPC.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 09.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * The basic NPC, allow for more interaction than iRMMonster, to act like characters, but not necessarily with the same amount of information. NPC's might be named (important characters, quest information, etc) or un-named (commoners, average soldiers, generic encounters, etc (they should autogenerate names as well for querry, but keep them less subtle as they have little importance)
 *
 */

#import <Foundation/Foundation.h>
#import "iRMLiving.h"

@interface iRMNPC : iRMLiving

@property NSString *npcName;
@property NSString *npcProfession;

@property NSMutableString *npcGMNote;

- (id) init;

@end
