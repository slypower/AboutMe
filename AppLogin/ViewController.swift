//
//  ViewController.swift
//  AppLogin
//
//  Created by Виталий Бобрик on 9.03.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let userName = "admin"
    private let password = "admin"

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.user = userName
        
    }
    
    @IBAction func pressLogInButton() {
        
        guard  userNameTextField.text == userName,
               passwordTextField.text == password
        else {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password",
                      textField: passwordTextField)
            
            return
            
        }
    }
    
//    keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction func forgotUserNameButton() {
        showAlert(title: "Ooops!", message: "Your name is \(userName) :)")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(title: "Ooops!", message: "Your password is \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
}

// MARK: - Alert Controller
extension ViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: keyboard
