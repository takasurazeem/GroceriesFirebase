//
//  LoginSignupViewController.swift
//  GroceriesFirebase
//
//  Created by Takasur Azeem on 05/11/2020.
//

import UIKit

class LoginSignupViewController: UIViewController {

    @IBOutlet weak var loginSignUpButton: UIButton!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var outerMostStackView: UIStackView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        usernameTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration: 0.3) {
            self.outerMostStackView.alpha = 1.0
        }
    }
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            loginSignUpButton.setTitle("Login", for: .normal)
            confirmPasswordTextField.toggleVisibilityWith(duration: 0.3, hide: true)
            usernameTextField.placeholder = "email/username"
        } else {
            loginSignUpButton.setTitle("Sign Up", for: .normal)
            usernameTextField.placeholder = "email"
            confirmPasswordTextField.toggleVisibilityWith(duration: 0.3, hide: false)
        }
    }
}
