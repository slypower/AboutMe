//
//  ViewController.swift
//  AppLogin
//
//  Created by Виталий Бобрик on 9.03.22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let users = UserLogin.getUsers()

    private let userName: String = UserLogin.login
    private let password: String = UserLogin.password
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.delegate = self

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let person: String = users.name + " " + users.surname
     
        
        let tabBarController = segue.destination as? UITabBarController
        guard let viewControllers = tabBarController?.viewControllers else {return}
        for viewController in viewControllers {
            
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = person
            
            } else if let navigationVC = viewController as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController as! UserViewController
                
                aboutUserVC.title = person
                
                aboutUserVC.name = users.name
                aboutUserVC.surname = users.surname
                aboutUserVC.age = users.age
                aboutUserVC.work = users.work
                aboutUserVC.sity = users.sity
                aboutUserVC.interests = users.interests

            }
            
        }

    }
    
    @IBAction func pressLogInButton() {
 
        guard userNameTextField.text == userName, passwordTextField.text == password else {
                showAlert(
                    title: "Invalid login or password",
                    message: "Please, enter correct login and password",
                    textField: passwordTextField
                )
                return
            }

            performSegue(withIdentifier: "openWelcomeVC", sender: nil)
            
    }

    @IBAction func forgotUserPassword(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Ooops!", message: "Your name is \(userName) 😀")
            : showAlert(title: "Ooops!", message: "Your password is \(password) 😀")
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
}

// MARK: - Alert Controller
extension LoginViewController {
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
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            pressLogInButton()
        }
        return true
    }
}
