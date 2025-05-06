//
//  WelcomeViewController.swift
//  LoginApp 2.06.0
//
//  Created by Александр Манжосов on 02.05.2025.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.userName)!" 
        nameLabel.text = "My name is \(user.person.fullName)"
    }
    @IBAction func logOutWasPressed() {
    }
    
}
