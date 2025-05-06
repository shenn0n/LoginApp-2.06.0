//
//  PersonalBioViewController.swift
//  LoginApp 2.06.0
//
//  Created by Александр Манжосов on 06.05.2025.
//

import UIKit

final class PersonalBioViewController: UIViewController {
    
    @IBOutlet var textLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel.text = user.person.bio
        
        self.title = "\(user.person.fullName) Bio"
    }

}
