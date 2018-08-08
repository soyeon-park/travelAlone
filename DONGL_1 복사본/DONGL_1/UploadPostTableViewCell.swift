//
//  UploadPostTableViewCell.swift
//  DONGL_1
//
//  Created by 방문사용자 on 2018. 8. 8..
//  Copyright © 2018년 HHBS. All rights reserved.
//

import UIKit

class UploadPostTableViewCell: UITableViewCell {

    @IBOutlet weak var printCity: UILabel!
    @IBAction func UploadButton(_ sender: Any) {
    }
    @IBOutlet weak var printDate: UILabel!
    @IBOutlet weak var notefield: UITextView!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var titleField: UITextField!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
