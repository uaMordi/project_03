//
//  ContactViewController.swift
//  NewPolice
//
//  Created by Mor Di on 13.06.16.
//  Copyright © 2016 Mor Di. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func mailButton(sender: AnyObject) {
        
        let alert = UIAlertController(title: "Пошта", message: "Пропозиції та зауваження надсилайте на пошту police.gov.ua@gmail.com", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: .Cancel, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)

    }
    
    @IBAction func facebookButton(sender: AnyObject) {
        
        let urlString = NSURL(string: "https://www.facebook.com/permalink.php?story_fbid=192423411158258&id=192407107826555&pnref=story.unseen-section")
        UIApplication.sharedApplication().openURL(urlString!)
        
    }
    


}
