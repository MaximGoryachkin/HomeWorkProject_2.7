//
//  DirectoryTableViewController.swift
//  HomeWorkProject_2.7
//
//  Created by Максим on 27.07.2021.
//

import UIKit

class DirectoryTableViewController: UITableViewController {
    
    var persons: [Person]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView,
                            titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
            tableView.dequeueReusableCell(withIdentifier: "directoryCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = persons[indexPath.section].phoneNumber
            content.image = UIImage(systemName: "phone")
        default:
            content.text = persons[indexPath.section].eMail
            content.image = UIImage(systemName: "envelope")
        }
        
        cell.contentConfiguration = content
    
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
