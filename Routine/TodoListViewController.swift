//
//  ViewController.swift
//  Routine
//
//  Created by Vishal Nikhoriya on 08/08/19.
//  Copyright © 2019 Vishal_Nikhoriya. All rights reserved.
//

import UIKit

class TodoListViewController : UITableViewController {
    let itemArray = ["find mike","Buy eggos","Destrory Demogorgon"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

//MARK - TableView Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemcell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
//MARK - TableView Delegate Methods
   override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      //print(itemArray[indexPath.row])
    
    if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
    }else{
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
    }
    
    tableView.deselectRow(at: indexPath, animated: true)
    
    }
}

