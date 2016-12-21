//
//  informationViewController.swift
//  NewPolice
//
//  Created by Mor Di on 13.06.16.
//  Copyright © 2016 Mor Di. All rights reserved.
//

import UIKit

class informationViewController: UIViewController {

    @IBOutlet weak var labelInformation: UILabel!
    
    let lblText = "Закон України «Про Національну поліцію» \n(Відомості Верховної Ради (ВВР), 2015, № 40-41, ст.379)\nРедакція від 01.01.2016\n\nКодекс України «Про адміністративні правопорушення»\n(Відомості Верховної Ради Української РСР (ВВР) 1984, додаток до № 51, ст.1122)\nРедакція від 11.06.2016"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    labelInformation.text = lblText
    labelInformation.textColor = UIColor.whiteColor()
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
