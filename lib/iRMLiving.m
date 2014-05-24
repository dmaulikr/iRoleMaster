/*
 *  iRMLiving.m
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 07.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 *
 */

#import "iRMLiving.h"
#import "iRMStat.h"

@implementation iRMLiving

- (id) init
{
    self = [super init];
    
    if (self) {
        iRMStat *rawStats[10] = { [[iRMStat alloc] initWithID:@0], [[iRMStat alloc] initWithID:@1], [[iRMStat alloc] initWithID:@2], [[iRMStat alloc] initWithID:@3], [[iRMStat alloc] initWithID:@4], [[iRMStat alloc] initWithID:@5], [[iRMStat alloc] initWithID:@6], [[iRMStat alloc] initWithID:@7], [[iRMStat alloc] initWithID:@8], [[iRMStat alloc] initWithID:@9] };
        _livingStats = [NSArray arrayWithObjects:&(rawStats) count:10];
    }
    return self;
}

- (NSString *) getGenderString
{
    switch ([_livingGender intValue]) {
        case GENDER_NEUTER:
            return @"Neuter";
            break;
        case GENDER_MALE:
            return @"Male";
            break;
        case GENDER_FEMALE:
            return @"Female";
            break;
        default:
            return @"Unknown";
    }
}

@end
