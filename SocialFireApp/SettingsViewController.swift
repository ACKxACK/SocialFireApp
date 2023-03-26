//
//  SettingsViewController.swift
//  SocialFireApp
//
//  Created by Ali Can Kayaaslan on 24.03.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOutButtonClicked(_ sender: Any) {
        performSegue(withIdentifier: "toLoginPage", sender: nil)
    }
    
}
