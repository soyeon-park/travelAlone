//
//  TalkTableViewCell.swift
//  DONGL_1
//
//  Created by 방문사용자 on 2018. 8. 3..
//  Copyright © 2018년 HHBS. All rights reserved.
//

import UIKit

class TalkTableViewCell: UITableViewCell {

    
    @IBOutlet weak var TalkTime: UILabel!
    @IBOutlet weak var TalkUserID: UILabel!
    @IBOutlet weak var TalkTalk: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    @IBOutlet weak var TalkUserImage: UIImageView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
