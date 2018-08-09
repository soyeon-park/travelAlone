//
//  PostViewController.swift
//  DONGL_1
//
//  Created by 방문사용자 on 2018. 8. 9..
//  Copyright © 2018년 HHBS. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {
    @IBOutlet weak var noteField: UITextView!
    @IBOutlet weak var CityandDate: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func uploadButton(_ sender: Any) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
