//
//  SearchPageTableViewController.swift
//  NewProject
//
//  Created by 방문사용자 on 2018. 7. 31..
//  Copyright © 2018년 HHBS. All rights reserved.
//

import UIKit

struct posts {
    var ID: String
    var note: String
}

struct user {
    var userID: String
    var userAge: Int
    var userComment: String
    var userCharacter: [String]
    var userImage: String
    
}

let today = Date()
let tomorrow = Date(timeIntervalSinceNow:86400)
let yesterday = Date(timeIntervalSinceNow:-86400)



var users: [user] = [
    user(userID: "SMR77", userAge: 22, userComment: "커피를 좋아해요", userCharacter: ["호텔", "택시", "맛집"
        ], userImage: "SMR77"),
    user(userID: "Kyotosarang", userAge: 30, userComment: "I love Kyoto", userCharacter: ["일본", "사진", "카페"], userImage: "Kyotosarang"),
    user(userID: "Popp234", userAge: 27, userComment: "남미 여행", userCharacter: ["남미", "배낭여행", "사진", "트래킹"], userImage: "Popp234"),
    user(userID: "YS0514", userAge: 21, userComment: "영화, 사진을 좋아해요!", userCharacter: ["영화", "사진", "맛            집"], userImage: "YS0514")
]


class SearchPageTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
