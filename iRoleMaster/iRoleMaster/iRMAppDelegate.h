/*
 *  iRMAppDelegate.h
 *  iRoleMaster
 *
 *  Created by Aun Johnsen on 07.02.14.
 *  Copyright (c) 2014 Aun Johnsen. All rights reserved.
 */

#import <Cocoa/Cocoa.h>

@interface iRMAppDelegate : NSObject <NSApplicationDelegate>


@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (weak) IBOutlet NSPanel *startWindowPanel;
@property (weak) IBOutlet NSWindow *gmToolWindow;
@property (weak) IBOutlet NSWindow *openNewCharacterWindow;


- (IBAction)saveAction:(id)sender;
- (IBAction)newCharacterAction:(id)sender;
- (IBAction)openCharacterAction:(id)sender;
- (IBAction)gmToolAction:(id)sender;
@end
