//
//  secondTableViewController.swift
//  NewPolice
//
//  Created by Mor Di on 30.05.16.
//  Copyright © 2016 Mor Di. All rights reserved.
//

import UIKit

class secondTableViewController: UITableViewController {

    
    var secondArray = [String]()
    
    var secondAnswerArray = [String]()
    var secondAnswerArrayTitles = [String]()
    
    var secondSubName = [String]()
    
    var titles = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        tableView.backgroundColor = UIColor(red: 45/255, green: 68/255, blue: 110/255, alpha: 1.0)
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        
        
        self.tableView.estimatedRowHeight = 70
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return secondArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell2", forIndexPath: indexPath) as! secondTableViewCell
        
        cell.titleSecond.text = secondArray[indexPath.row]
        cell.subTitleSecond.text = secondSubName[indexPath.row]
        
        cell.backgroundColor = UIColor(red: 45/255, green: 68/255, blue: 110/255, alpha: 1.0)
        
        title = titles[indexPath.row]
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let indexPath: NSIndexPath = self.tableView.indexPathForSelectedRow!
        
        let destinationVC = segue.destinationViewController as! thirdViewController
        
        destinationVC.firstString = secondAnswerArray[indexPath.row]
        destinationVC.thirdTitles = secondAnswerArrayTitles[indexPath.row]
        
        
    }
    
}
