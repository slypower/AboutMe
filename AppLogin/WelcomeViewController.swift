//
//  WelcomeViewController.swift
//  AppLogin
//
//  Created by Виталий Бобрик on 9.03.22.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomlLbel: UILabel!
    
    var user: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomlLbel.text = "Welcome, \(String(user ?? ""))"
        
    }
 

    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}
