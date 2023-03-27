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
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setInitViews()
        
    }
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { authDataResult, error in
            if error != nil {
                self.errorMessage(titleInput: "ERROR!", messageInput: error?.localizedDescription ?? "Error! Please Try Again Later.")
            } else {
                self.performSegue(withIdentifier: "toFeedVC", sender: nil)
            }
        }
        
        
    }
    @IBAction func signUpButtonClicked(_ sender: Any) {
        
        if emailTextField.text != "" && passwordTextField.text != "" {
            //Sign Up
            Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { authdataresult, error in
                if error != nil {
                    self.errorMessage(titleInput: "ERROR!", messageInput: error?.localizedDescription ?? "Error! Please Try Again Later.")
                } else {
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
        } else {
           errorMessage(titleInput: "ERROR!", messageInput: "PLease enter an Email and Password")
        }
    }
    
    func setInitViews() {
        emailTextField.addTarget(self, action: #selector(validateFields), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(validateFields), for: .editingChanged)
    }
    
    @objc func validateFields() {
        loginButton.isEnabled = emailTextField.text != "" && passwordTextField.text != ""
//        signUpButton.isEnabled = emailTextField.text != "" && passwordTextField.text != ""
    }
    
    func errorMessage(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
    //MARK: -KeyBoard appears with click
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

