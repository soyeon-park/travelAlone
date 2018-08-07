//
//  PostTableViewCell.swift
//  DONGL_1
//
//  Created by 방문사용자 on 2018. 8. 7..
//  Copyright © 2018년 HHBS. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var Destination: UILabel!
    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var userID: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
