//
//  ViewController.swift
//  listview
//
//  Created by Tigris Solutions India Pvt Ltd on 21/08/18.
//  Copyright © 2018 listview. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    var itemarray = ["food","dress"]
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemarray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemarray[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
        tableView.deselectRow(at: indexPath, animated: true)
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
            }
     
    @IBAction func addButtonPress(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        let alert = UIAlertController(title: "add new",message:"",preferredStyle: .alert)
        let action = UIAlertAction(title: "add item", style: .default) { ( action) in
          
      
            self.itemarray.append(textField.text!)
            self.tableView.reloadData()
            
        }
        alert.addTextField{ (alertTextField)in
            alertTextField.placeholder = "create new"
          
            textField = alertTextField
          
        }
        alert.addAction(action)
            present(alert,animated: true,completion: nil)
        }
    }
    




