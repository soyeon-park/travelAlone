//
//  SearchTableViewController.swift
//  DONGL_1
//
//  Created by 방문사용자 on 2018. 8. 3..
//  Copyright © 2018년 HHBS. All rights reserved.
//

//https://macinjune.com/all-posts/web-developing/swift/xcode-swift-viewcontroller간-데이터-교환하기/
import UIKit

let searchController = UISearchController(searchResultsController: nil)

var filteredResults = [Post]()

struct User {
    var ID: String
    var age: Int
    var gender : String
    var selfintro: String
}

struct City {
    var name: String
    var nation: String
}

struct Post {
    var poster: User
    var title: String
    var destination: City
    var memo: String

}

var users: [User] = [User1, User2]
var posts: [Post] = [Post1, Post2]

var California = City(name: "미서부", nation: "미국")
var Paris = City(name: "파리", nation: "프랑스")

var User1 = User(ID: "YS0514", age: 21, gender: "female" , selfintro: "Hi")
var Post1 = Post(poster: User1, title: "9월 몽골 투어", destination: California, memo: "9.14-9.28")
var User2 = User(ID: "KK505", age: 28, gender: "male", selfintro: "hello")
var Post2 = Post(poster: User2, title: "HI", destination: Paris, memo: "Party people~~~~~~~~~~~~~~~~~")


class SearchTableViewController: UITableViewController {

    func searchBarIsEmpty() -> Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    func filteredContentForSearchTest(_ searchText: String, scope: String = "All") {
        filteredResults = posts.filter({( post: Post) -> Bool in return post.destination.name.lowercased().contains(searchText.lowercased())
            
        })
        
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "여행하려는 도시"
        navigationItem.searchController = searchController
        definesPresentationContext = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering() {
            return filteredResults.count
        }
        return posts.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostTableViewCell
        let item = posts[indexPath.row]
        cell.userID?.text = item.poster.ID
        cell.postTitle?.text = item.title
        cell.Destination?.text = item.destination.name
        return cell
    }
    
    func isFiltering() -> Bool {
    return searchController.isActive && !searchBarIsEmpty()
    }

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

extension SearchTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        filteredContentForSearchTest(searchController.searchBar.text!)
    }
}
