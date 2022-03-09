//
//  ViewController.swift
//  AppLogin
//
//  Created by Виталий Бобрик on 9.03.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var PasswordTextRield: UITextField!
    
    let userName = "Admin"
    let password = "admin"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func loginInButton() {
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(title: "Ooops!", message: "Your name is \(userName) :)")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(title: "Ooops!", message: "Your password is \(password)")
    }
}

// MARK: - Private Metod
extension ViewController {
    fileprivate func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
