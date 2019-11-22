//
//  LoginViewController.swift
//  ChatAppWithFirebase
//
//  Created by Darko Kulakov on 2019-11-20.
//  Copyright © 2019 Elena Kulakova. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginPressed(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                if let error = error {
                    print(error.localizedDescription)
                } else {
                    self?.performSegue(withIdentifier: "LoginToChat", sender: self)
                }
            }
        }
    }
}
