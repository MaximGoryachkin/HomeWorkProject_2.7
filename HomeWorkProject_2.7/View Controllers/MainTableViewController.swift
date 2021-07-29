//
//  MainTableViewController.swift
//  HomeWorkProject_2.7
//
//  Created by Максим on 27.07.2021.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    var persons: [Person]!
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
            tableView.dequeueReusableCell(withIdentifier: "mainCell",
                                          for: indexPath)

        var content = cell.defaultContentConfiguration()
        content.text = persons[indexPath.row].fullName
        cell.contentConfiguration = content
        
        return cell
    }

     // MARK: - Navigation
     
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC =
                segue.destination as? InfoViewController else { return }
        guard let indexPath =
                tableView.indexPathForSelectedRow else { return }
        let person = persons[indexPath.row]
        infoVC.person = person
     }

    
}
