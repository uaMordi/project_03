//
//  firstTableViewCell.swift
//  NewPolice
//
//  Created by Mor Di on 30.05.16.
//  Copyright © 2016 Mor Di. All rights reserved.
//

import UIKit

class firstTableViewCell: UITableViewCell {

 
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var subTitle: UILabel!

    @IBOutlet weak var subTitleSecond: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
