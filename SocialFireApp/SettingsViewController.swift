//
//  SettingsViewController.swift
//  SocialFireApp
//
//  Created by Ali Can Kayaaslan on 24.03.2023.
//

import UIKit
import FirebaseAuth

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOutButtonClicked(_ sender: Any) {
        
        do {
            try Auth.auth().signOut()
            performSegue(withIdentifier: "toLoginPage", sender: nil)
        } catch {
            print("Error!")
        }
        
        
    }
    
}
