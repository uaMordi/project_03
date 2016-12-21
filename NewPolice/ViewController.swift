//
//  ViewController.swift
//  NewPolice
//
//  Created by Mor Di on 30.05.16.
//  Copyright © 2016 Mor Di. All rights reserved.
//

import UIKit
import StoreKit

class ViewController: UIViewController {
  
    @IBOutlet weak var segueToZU: UIButton!
    
    @IBOutlet weak var buyButton: UIButton!
    
    @IBOutlet weak var segueToKUPAP: UIButton!
    
    @IBOutlet weak var zuP: UIImageView!
    
    @IBOutlet weak var KUPAP: UIImageView!
    
    
    
    var unlockKey = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

         self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)

        
        
        // Read Data Key to unlock kupap
        
        if let key = NSUserDefaults.standardUserDefaults().objectForKey("unlockKupap") {
            unlockKey = key as! String
            }
        
        if unlockKey == "1" {
            
            buyButton.hidden = true
            buyButton.enabled = false
            segueToKUPAP.hidden = false
            segueToKUPAP.enabled = true
        
        } else {
            
            buyButton.hidden = false
            buyButton.enabled = true
            segueToKUPAP.hidden = true
            segueToKUPAP.enabled = false
        }
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func call102(sender: AnyObject) {
        
        let alertController = UIAlertController(title: "102", message: "Викликати поліцію?", preferredStyle: UIAlertControllerStyle.Alert)
        
        let callAction = UIAlertAction(title: "Викликати", style: .Default, handler: {
            action in
            
            let phone = "tel://102"
            let url:NSURL = NSURL(string:phone)!
            UIApplication.sharedApplication().openURL(url)
            
            }
        )
        alertController.addAction(callAction)
        
        let defaultAction = UIAlertAction(title: "Відмінити", style: .Default, handler: nil)
        alertController.addAction(defaultAction)
        
        presentViewController(alertController, animated: true, completion: nil)
        
    }

    
    
    @IBAction func call044(sender: AnyObject) {
        let alertController = UIAlertController(title: "Гаряча лінія", message: "Зателефонувати до гарячої линії патрульної поліції?", preferredStyle: UIAlertControllerStyle.Alert)
        
        let callAction = UIAlertAction(title: "Викликати", style: .Default, handler: {
            action in
            
            let phone = "tel://0442549488"
            let url:NSURL = NSURL(string:phone)!
            UIApplication.sharedApplication().openURL(url)
           
            }
        )
        alertController.addAction(callAction)
        
        let defaultAction = UIAlertAction(title: "Відмінити", style: .Default, handler: nil)
        alertController.addAction(defaultAction)
        
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    

    @IBAction func buyButtonAction(sender: UIButton) {
        
        let alertController = UIAlertController(title: "Обмежений доступ", message: "Цей розділ доступний тільки для Преміум", preferredStyle: UIAlertControllerStyle.Alert)
        
      
        let defaultAction = UIAlertAction(title: "Ок", style: .Default, handler: nil)
        alertController.addAction(defaultAction)
        
        presentViewController(alertController, animated: true, completion: nil)

        
       
           }
    
 
  }
    
    
    


