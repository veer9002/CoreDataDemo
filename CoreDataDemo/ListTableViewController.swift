//
//  ListTableViewController.swift
//  CoreDataDemo
//
//  Created by Manish Sharma on 09/11/18.
//  Copyright © 2018 Manish Sharma. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    var student = [Student]()
    override func viewDidLoad() {
        super.viewDidLoad()
        student = DatabaseHelper.sharedInstance.fetchData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return student.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ListTableViewCell
        cell.lblName.text = student[indexPath.row].name
        cell.lblAddress.text = student[indexPath.row].address
        cell.lblCity.text = student[indexPath.row].city
        cell.lblMobile.text = student[indexPath.row].mobile
        return cell
    }
}
