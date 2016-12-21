//
//  bookmarksViewController.swift
//  NewPolice
//
//  Created by Mor Di on 03.06.16.
//  Copyright © 2016 Mor Di. All rights reserved.
//

import UIKit
import CoreData

class bookmarksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var theBookmarks = [NSManagedObject]()
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
   var managedObjectContext: NSManagedObjectContext!

    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.delegate = self
        tableView.dataSource = self

            tableView.backgroundColor = UIColor(red: 45/255, green: 68/255, blue: 110/255, alpha: 1.0)
            
            self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)

    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = appDelegate.managedObjectContext
        
        let fetchRequest = NSFetchRequest(entityName: "Bookmark")
        
        do {
            let results = try context.executeFetchRequest(fetchRequest)
            theBookmarks = results as! [NSManagedObject]
        } catch let error as NSError {
            print("wrong core data \(error.localizedDescription)")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theBookmarks.count     }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("bookCell", forIndexPath: indexPath) as! bookmarkTableViewCell
        
        let bookmarks = theBookmarks[indexPath.row]
        
        cell.lbl.text = bookmarks.valueForKey("name") as? String 
        
        cell.lbl.textColor = UIColor.whiteColor()
        cell.backgroundColor = UIColor(red: 45/255, green: 68/255, blue: 110/255, alpha: 1.0)
        return cell
    }
    
      func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
 /*   func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let deleteButton = UITableViewRowAction(style: .Default, title: "Видалити", handler: { (action, indexPath) in
        })
 
        return [deleteButton]
    }
*/
    
 /*   func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == .Delete {
           let itemToDelete = theBookmarks[indexPath.row]
            managedObjectContext.deleteObject(itemToDelete)
            
              do {
                try managedObjectContext.save()
                tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
           }  catch let error as NSError {
                print("error: \(error.localizedDescription)")
            }
        }
         tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
    }
 */
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "toReadBookmark" {
        
        let indexPath: NSIndexPath = self.tableView.indexPathForSelectedRow!
        
        let destinationVC = segue.destinationViewController as! readBookmarkViewController
        
        let bookmarks = theBookmarks[indexPath.row]
            
        destinationVC.read = (bookmarks.valueForKey("name") as? String)!
            
        }
    }
    
}