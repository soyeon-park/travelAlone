//
//  UploadPostTableViewCell.swift
//  DONGL_1
//
//  Created by 방문사용자 on 2018. 8. 8..
//  Copyright © 2018년 HHBS. All rights reserved.
//

import UIKit

class UploadPostTableViewCell: UITableViewCell {

   
    @IBOutlet weak var NoteTextField: UITextView!
    @IBOutlet weak var TravelDate: UILabel!
    @IBOutlet weak var TravelCity: UILabel!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
