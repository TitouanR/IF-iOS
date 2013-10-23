//
//  IFAppDelegate.h
//  Imaginarium Festival
//
//  Created by Titouan Rossier on 22/10/13.
//  Copyright (c) 2013 TitouanRossier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IFAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
