//
//  ChattingView.swift
//  채팅창
//
//  Created by 김성재 on 2018. 8. 8..
//  Copyright © 2018년 김성재. All rights reserved.
//

import UIKit

protocol chatting {
    
}

class ChattingView: UIViewController {
    @IBOutlet weak var chattingInput: UITextField!

    
    @IBAction func sendButton(_ sender: Any) {
        if chattingInput.text != " " {
            chatting.append(chattingInput.text!)
            chattingInput.text =  " "
        }
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
