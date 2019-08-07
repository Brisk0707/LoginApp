//
//  ViewController.swift
//  LoginApp
//
//  Created by Борис Крисько on 8/6/19.
//  Copyright © 2019 Borys Krisko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let login = "admin"
    let password = "password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if loginTextField.text == login && passwordTextField.text == password {
            let loginVC = segue.destination as! LoginVC
            loginVC.text = "Hello, " + loginTextField.text! + "!"
        } else {
            showAlert(title: "", message: "Login or password is inncorrect")
        }
    }
    
    @IBAction func forgotLoginButtonPressed() {
        showAlert(title: "Forgot your login?", message: "Your login is \(login)")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "Forgot your password?", message: "Your password is \(password)")
    }

    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true)
    }
}


