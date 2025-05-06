//
//  LoginViewController.swift
//  LoginApp 2.06.0
//
//  Created by Александр Манжосов on 02.05.2025.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = user.userName
        passwordTF.text = user.password
    }
        
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == user.userName, passwordTF.text == user.password else {
            alert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password"
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as? UITabBarController
        
        tabBarController?.viewControllers?.forEach { viewController in
            if let welcomeVS = viewController as? WelcomeViewController {
                welcomeVS.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                if let personalPageVC = navigationVC.viewControllers.first as? PersonalPageViewController {
                    personalPageVC.user = user
                }
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func showLoginHintAlert(_ sender: UIButton) {
        let message = sender.tag == 0 ? "Your name is \(user.userName)." : "Your password is \(user.password)."
        alert(title: "Oops", message: message)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func alert(title: String, message: String) {
        
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default) { [weak self] _ in
            self?.passwordTF.text = ""
        }
        alertController.addAction(okAction)
        
        present(alertController, animated: true)
    }
    
}

