//
//  WelcomeViewController.swift
//  LoginApp 2.06.0
//
//  Created by Александр Манжосов on 02.05.2025.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome " + welcome
    }
    @IBAction func logOutWasPressed() {
    }
    
}
