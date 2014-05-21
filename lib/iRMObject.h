/*
 *  iRMObject.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 12.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 * Base objects, all items, artifacts, armor, weapon, etc are based on this.
 *
 */

#import <Foundation/Foundation.h>

@interface iRMObject : NSObject

@property NSString *objectName;
@property NSString *objectDescription;
@property NSNumber *objectWeight;
@property NSNumber *objectValue;

@end
