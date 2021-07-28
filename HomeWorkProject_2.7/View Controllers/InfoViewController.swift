//
//  ViewController.swift
//  HomeWorkProject_2.7
//
//  Created by Максим on 27.07.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var eMailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        initInfo()
    }

    private func initInfo() {
        navigationItem.title = person.fullName
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        eMailLabel.text = "Email: \(person.eMail)"
    }

}

