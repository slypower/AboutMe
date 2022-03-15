//
//  UserViewController.swift
//  AboutMe
//
//  Created by Виталий Бобрик on 12.03.22.
//

import UIKit

class UserViewController: UIViewController {
   
    @IBOutlet var aboutMeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        title = user.person.fullName
        aboutMeLabel.text = "My name is \(user.person.fullName). I'm \(user.person.age). I'm from \(user.person.sity). I'm a \(user.person.work). I'm fond of \(user.person.interests)"
    
    }

}
