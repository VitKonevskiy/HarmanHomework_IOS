//
//  ViewController.swift
//  ToDoList
//
//  Created by Admin on 25.04.17.
//  Copyright © 2017 Konevskiy. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    
    let cellReuseIdentifier = "Cell"
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:MyCustomCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! MyCustomCell
        let targetTask = tasks[indexPath.row]
        cell.myTitle.text = targetTask.title
        cell.myDescription.text = targetTask.description
        
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EditTask"
        {
            let destinationVC:EditTaskController = segue.destination as! EditTaskController
            let selectRow = tableView.indexPathForSelectedRow?.row
            destinationVC.myTask = tasks[selectRow!]
            destinationVC.selectIndex = selectRow!
        }
    }


}

