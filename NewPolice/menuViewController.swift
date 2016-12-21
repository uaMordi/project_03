//
//  menuViewController.swift
//  NewPolice
//
//  Created by Mor Di on 30.05.16.
//  Copyright © 2016 Mor Di. All rights reserved.
//

import UIKit

class menuViewController: UIViewController {

    @IBOutlet weak var restorBut: UIButton!
    
    @IBOutlet weak var moneyBag: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

         self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
