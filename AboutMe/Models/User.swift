//
//  User.swift
//  AboutMe
//
//  Created by Виталий Бобрик on 12.03.22.
//

struct UserLogin {
    static let login = "admin"
    static let password = "admin"
    let users: User
    
    static func getUsers() -> User {

                         User(name: "Vitaliy",
                             surname: "Bobrik",
                             age: 34,
                             work: "developer 1C",
                             sity: "Minsk",
                             interests: "football, volleyball")
                        
                      
    }
    
}

struct User {
    let name: String
    let surname: String
    let age: Int
    let work: String
    let sity: String
    let interests: String
}


