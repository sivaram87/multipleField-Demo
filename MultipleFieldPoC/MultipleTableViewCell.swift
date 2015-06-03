//
//  MultipleTableViewCell.swift
//  MultipleFieldPoC
//
//  Created by Shiva on 18/02/15.
//  Copyright (c) 2015 Shiva. All rights reserved.
//

import UIKit

class MultipleTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setValueForDescription(values:Dictionary<String, NSAttributedString>?) {
        if let values = values {
            var text = NSMutableAttributedString()
            for (key,value) in values {
                text.appendAttributedString(value)
                text.appendAttributedString(NSAttributedString(string: "\n"))
            }
            self.lblDescription.attributedText = text
        } else {
            self.lblDescription.text = "Hello Hello Hello Hello Hello Hello Hello Hello Hello \n Hello Hello Hello Hello Hello Hello Hello Hello Hello \n Hello Hello Hello Hello Hello Hello Hello Hello Hello"
            
        }
    }
    

}
