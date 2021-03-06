//
//  TabBarController.swift
//  HomeWorkProject_2.7
//
//  Created by Максим on 28.07.2021.
//


import UIKit

class TabBarController: UITabBarController {
    
    let persons = Person.setPersons()

    override func viewDidLoad() {
        prepareVC()
    }
    
    private func prepareVC() {
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            if let mainVC =
                viewController as? MainTableViewController {
                mainVC.persons = persons
            } else if let directoryVC =
            viewController as? DirectoryTableViewController {
                directoryVC.persons = persons
            }
        }
    }
    
}
