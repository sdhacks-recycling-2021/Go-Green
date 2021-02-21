//
//  SignUpController.swift
//  Go Green
//
//  Created by Alan Cao on 2/20/21.
//

import UIKit

class SignUpController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    func configureUI() {
        emailTextField.widthAnchor.constraint(equalToConstant: view.frame.width - 80).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        passwordTextField.isSecureTextEntry = true
        passwordTextField.widthAnchor.constraint(equalToConstant: view.frame.width - 80).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        signUpButton.widthAnchor.constraint(equalToConstant: view.frame.width - 80).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        signUpButton.layer.cornerRadius = 48 / 2
    }
    
    @IBAction func handleSignUpTapped(_ sender: Any) {
        // TODO: - Handle sign up
        
        dismiss(animated: true, completion: nil)
    }
}
