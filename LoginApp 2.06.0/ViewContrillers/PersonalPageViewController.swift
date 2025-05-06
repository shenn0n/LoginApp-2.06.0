//
//  PersonalPageViewController.swift
//  LoginApp 2.06.0
//
//  Created by Александр Манжосов on 06.05.2025.
//

import UIKit

final class PersonalPageViewController: UIViewController {
    
    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        companyLabel.text = user.person.company
        departmentLabel.text = user.person.department
        positionLabel.text = user.person.position
        
        imageView.image = UIImage(named: user.person.image)
        imageView.layer.cornerRadius = imageView.frame.height / 2
        
        self.title = user.person.fullName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personalBioVC = segue.destination as? PersonalBioViewController
        personalBioVC?.user = user
    }

}
