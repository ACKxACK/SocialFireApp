//
//  ViewController.swift
//  SocialFireApp
//
//  Created by Ali Can Kayaaslan on 23.03.2023.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseStorage

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        
        if emailTextField.text != "" && passwordTextField.text != "" {
            //Sign Up
        } else {
            
        }
        
    }
    @IBAction func signUpButtonClicked(_ sender: Any) {
    }

}

