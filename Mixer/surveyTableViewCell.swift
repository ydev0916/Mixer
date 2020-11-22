//
//  surveyTableViewCell.swift
//  
//
//  Created by Devansh Yerpude on 11/22/20.
//

import UIKit

class surveyTableViewCell: UITableViewCell {

    @IBOutlet weak var answers: UITextField!
    @IBOutlet weak var questions:
    UILabel!
    //hello
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
