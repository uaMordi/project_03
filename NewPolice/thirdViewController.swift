//
//  thirdViewController.swift
//  NewPolice
//
//  Created by Mor Di on 30.05.16.
//  Copyright © 2016 Mor Di. All rights reserved.
//

import UIKit
import CoreData

class thirdViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    
  var theBookmarks = [NSManagedObject]()

    
    var firstString = String()
    var thirdTitles = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        textView.backgroundColor = UIColor(red: 45/255, green: 68/255, blue: 110/255, alpha: 1.0)
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        
        textView.text = firstString
        textView.font = UIFont.systemFontOfSize(16)
        textView.textColor = UIColor.whiteColor()
        title = thirdTitles
        
       
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        textView.scrollEnabled = false
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = appDelegate.managedObjectContext
        
        let fetchRequest = NSFetchRequest(entityName: "Bookmark")
        
        do {
            let results = try context.executeFetchRequest(fetchRequest)
            theBookmarks = results as! [NSManagedObject]
        } catch let error as NSError {
            print("Запрос данных из Core Data не прошел \(error.localizedDescription)")
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        textView.scrollEnabled = true
    }

    
  
    @IBAction func addButton(sender: AnyObject) {
        
        let alert = UIAlertController(title: "Закладки", message: "Ви додали нову закладку", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: .Cancel, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
        
        let myText = textView.text
        
        self.saveKey(myText!)

        
    }
    
    func saveKey(name: String) {
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = appDelegate.managedObjectContext
        
        let entity = NSEntityDescription.entityForName("Bookmark", inManagedObjectContext: context)
        
        let bookmark = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: context)
        
        bookmark.setValue(name, forKey: "name")
        
        do {
            try context.save()
            theBookmarks.append(bookmark)
        } catch let error as NSError {
            print("localized error description \(error.localizedDescription)")
        }
    }
}
