/*
 *  iRMMap.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 20.06.15.
 *  Copyright (c) 2015 Aun Johnsen. All rights reserved.
 *
 */

#import <Foundation/Foundation.h>
#import "iRMHex.h"
#import "iRMMapLabel.h"

@interface iRMMap : NSObject

@property NSNumber *mapHeight;
@property NSNumber *mapWidth;

@property NSMutableOrderedSet *mapHexes;

@end
