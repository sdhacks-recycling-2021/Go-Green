//
//  SignInController.swift
//  Go Green
//
//  Created by Alan Cao on 2/20/21.
//

import UIKit

class SignInController: UIViewController {
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    func configureUI() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.widthAnchor.constraint(equalToConstant: view.frame.width - 80).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        passwordTextField.isSecureTextEntry = true
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.widthAnchor.constraint(equalToConstant: view.frame.width - 80).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.widthAnchor.constraint(equalToConstant: view.frame.width - 80).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        signInButton.layer.cornerRadius = 48 / 2
    }

    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var signInButton: UIButton!
}
