/*
 *  iRMMapLabel.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 20.06.15.
 *  Copyright (c) 2015 Aun Johnsen. All rights reserved.
 *
 */

#import "iRMMapLabel.h"

@implementation iRMMapLabel

- (void) addTranslatedName:(NSString *)language and:(NSString *)name
{
    /* Make a check if the name already exists and warn about this */
    if (_mlTranslatedNames[language]) {
        NSLog(@"Map Lable Error: Name already exists in this language, try assigning name to a different language or remove this name and try again");
        /* Find a way for NSLog to get the language and name arguments logged, and open a message window to the user */
        //NSLogv(@"Map Lable Error: Name %S already exists in %S", _mlTranslatedNames[language], language);
        return;
    }
    _mlTranslatedNames[language] = name;
    return;
}

@end
