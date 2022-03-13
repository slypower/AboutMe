//
//  UserViewController.swift
//  AboutMe
//
//  Created by Виталий Бобрик on 12.03.22.
//

import UIKit

class UserViewController: UIViewController {
   
    @IBOutlet var aboutMeLabel: UILabel!
    
    var name = ""
    var surname =  ""
    var age = 0
    var work = ""
    var sity = ""
    var interests = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        aboutMeLabel.text = "My name is \(name) \(surname). I'm \(age). I'm from \(sity). I'm a \(work). I'm fond of \(interests)"
    
    }

}
