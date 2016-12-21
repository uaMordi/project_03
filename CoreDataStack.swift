//
//  CoreDataStack.swift
//  MealTime
//
//  Created by Ivan Akulov on 06/12/15.
//  Copyright © 2015 Ivan Akulov. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    let bookmarkName = "name"
    
    private lazy var appDocDir: NSURL = {
        let urls = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        return urls[urls.count - 1]
    }()
    
    
    lazy var context: NSManagedObjectContext = {
        var managedObjectContext = NSManagedObjectContext(concurrencyType: .MainQueueConcurrencyType)
        managedObjectContext.persistentStoreCoordinator = self.persistentStoreCoordinator
        return managedObjectContext
    
    }()
    
    
    
    private lazy var persistentStoreCoordinator: NSPersistentStoreCoordinator = {
    
        let coordinator = NSPersistentStoreCoordinator(managedObjectModel: self.managedObjectModel)
        let url = self.appDocDir.URLByAppendingPathComponent(self.bookmarkName)
        
        do {
        
            let options = [NSMigratePersistentStoresAutomaticallyOption: true]
            try coordinator.addPersistentStoreWithType( NSSQLiteStoreType, configuration: nil, URL: url, options: options)
        } catch {
            print("Can't add persistent store")
        }
    
    return coordinator
        
    }()
    
    
    private lazy var managedObjectModel: NSManagedObjectModel = {
    
        let modelURL = NSBundle.mainBundle().URLForResource(self.bookmarkName, withExtension: "momd")!
        return NSManagedObjectModel(contentsOfURL: modelURL)!
    }()
    
    
    
    func save() {
        if context.hasChanges {
            do{
                try context.save()
            } catch let error as NSError {
                print("Error: \(error.localizedDescription)")
                abort()
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
}
