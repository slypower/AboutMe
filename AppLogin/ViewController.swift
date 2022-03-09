//
//  ViewController.swift
//  AppLogin
//
//  Created by Виталий Бобрик on 9.03.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var PasswordTextField: UITextField!
    
    let userName = "admin"
    let password = "admin"

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if userNameTextField.text != String(userName)
            || PasswordTextField.text != String(password) {
            
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password")
            
            PasswordTextField.text = ""
            
        } else {
        
            guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
            welcomeVC.user = userName
            
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }

    @IBAction func forgotUserNameButton() {
        showAlert(title: "Ooops!", message: "Your name is \(userName) :)")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(title: "Ooops!", message: "Your password is \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
//        guard let welcomeVC = segue.source as? WelcomeViewController else {return}
        userNameTextField.text = ""
        PasswordTextField.text = ""
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
