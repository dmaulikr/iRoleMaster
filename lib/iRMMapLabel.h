/*
 *  iRMMapLabel.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 20.06.15.
 *  Copyright (c) 2015 Aun Johnsen. All rights reserved.
 *
 */

#import <Foundation/Foundation.h>
#import "iRMHex.h"

@interface iRMMapLabel : NSObject

@property iRMHex *mlHex;
@property NSString *mlLabel;
@property NSImage *mlIcon;
@property NSMutableDictionary *mlTranslatedNames;
@property NSMutableString *mlGMNote;

- (void) addTranslatedName: (NSString *) language and:(NSString *) name;

@end
