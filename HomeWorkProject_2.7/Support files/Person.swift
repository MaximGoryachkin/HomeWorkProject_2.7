//
//  DataModel.swift
//  HomeWorkProject_2.7
//
//  Created by Максим on 28.07.2021.
//

import Foundation

struct Person {
    
    var firstName: String
    var lastName: String
    var phoneNumber: String
    var eMail: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func setPersons() -> [Person] {
        let firstNames = DataManager.shared.firstNames.shuffled()
        let lastNames = DataManager.shared.lastNames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        let eMail = DataManager.shared.eMails.shuffled()
        
        var persons: [Person] = []
        
        for index in 0..<DataManager.shared.count {
            let person = Person(firstName: firstNames[index],
                                lastName: lastNames[index],
                                phoneNumber: phoneNumbers[index],
                                eMail: eMail[index])
            persons.append(person)
        }
        
        return persons
    }

}
