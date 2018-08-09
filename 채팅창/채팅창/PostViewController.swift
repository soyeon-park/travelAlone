//
//  PostViewController.swift
//  채팅창
//
//  Created by 김성재 on 2018. 8. 8..
//  Copyright © 2018년 김성재. All rights reserved.
//

import UIKit

var postList =  ["ex1", "ex2", "ex3"]

class PostViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var postTableView: UITableView!
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "postCell")
        cell.textLabel?.text = postList[indexPath.row]
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        postTableView.reloadData()
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
