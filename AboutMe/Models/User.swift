//
//  User.swift
//  AboutMe
//
//  Created by Виталий Бобрик on 12.03.22.
//

struct UserLogin {
    let login: String
    let password: String
    let users: [User]

    static func getUser() -> [UserLogin] {
        [
            UserLogin( login: "admin",
                       password: "admin",
                       users: [
                         User(name: "Vitaliy",
                             surname: "Bobrik",
                             age: 34,
                             sity: "Minsk",
                             interests: "football, volleyball")
                        ]
                      )
        ]
    }
}

struct User {
    let name: String
    let surname: String
    let age: Int
    let sity: String
    let interests: String
}


