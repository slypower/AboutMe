//
//  User.swift
//  AboutMe
//
//  Created by Виталий Бобрик on 12.03.22.
//

import Darwin

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User( login: "admin",
              password: "admin",
              person: .getPerson())
    }
    
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let work: String
    let sity: String
    let interests: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Vitaliy", surname: "Bobrik", age: 34, work: "Developer 1C", sity: "Minsk", interests: "volleyball")
    }
    
}


