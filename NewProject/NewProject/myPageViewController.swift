//
//  myPageViewController.swift
//  NewProject
//
//  Created by 김성재 on 2018. 8. 3..
//  Copyright © 2018년 HHBS. All rights reserved.
//

import UIKit

struct userInfo {
    var UserID: String
    var UserSNSAccount: String
    var UserComment: String?
    var profileImage: String
}

class myPageViewController: UIViewController {
    
    var Userdata = userInfo(UserID: "YSO514", UserSNSAccount: "www.instagram.com", UserComment: "영화와 사진 음악을 좋아해요", profileImage: "userimage")

    @IBOutlet weak var UserID: UILabel!
    @IBOutlet weak var UserSNSAccount: UILabel!
    @IBOutlet weak var UserComment: UILabel!

    override func viewWillAppear(_ animated: Bool) {
        UserID.text = Userdata.UserID
        UserSNSAccount.text = Userdata.UserSNSAccount
        UserComment.text = Userdata.UserComment
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
