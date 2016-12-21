//
//  kupap2R2.swift
//  NewPolice
//
//  Created by Mor Di on 01.07.16.
//  Copyright © 2016 Mor Di. All rights reserved.
//

import UIKit

class kupap2R2: UITableViewController {

    var st = [String]()
    var stName = [String]()
    var text = [String]()
   
    
    
    var theThird = [String]()
    
    var theName = [String]()
    var theName2 = [String]()
    var theText = [String]()
    
    var TheTitlteName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 70.0
        
        title = TheTitlteName
        
        
        tableView.backgroundColor = UIColor(red: 45/255, green: 68/255, blue: 110/255, alpha: 1.0)
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return st.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("kupap2R2Cell", forIndexPath: indexPath) as! kupap2R2Cell
        
        
        cell.lbl.text = st[indexPath.row]
        
        cell.lblName.text = stName[indexPath.row]
        
        cell.backgroundColor = UIColor(red: 45/255, green: 68/255, blue: 110/255, alpha: 1.0)
        
        cell.lbl.textColor = UIColor.whiteColor()
        cell.lblName.textColor = UIColor.whiteColor()
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "kupap2Segue2" {
            
            let indexPath = self.tableView.indexPathForSelectedRow!
            
            let destinationVC = segue.destinationViewController as! thirdViewController
            
            destinationVC.firstString = theText[indexPath.row]
            destinationVC.thirdTitles = theName[indexPath.row]
        }
        
    }
    
    
}
