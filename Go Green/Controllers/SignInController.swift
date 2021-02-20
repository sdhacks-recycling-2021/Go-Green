//
//  SignInController.swift
//  Go Green
//
//  Created by Alan Cao on 2/20/21.
//

import UIKit

class SignInController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var signInButton: UIButton!
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    func configureUI() {
        navigationController?.navigationBar.shadowImage = UIImage()
        
        emailTextField.widthAnchor.constraint(equalToConstant: view.frame.width - 80).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        passwordTextField.isSecureTextEntry = true
        passwordTextField.widthAnchor.constraint(equalToConstant: view.frame.width - 80).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        signInButton.widthAnchor.constraint(equalToConstant: view.frame.width - 80).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        signInButton.layer.cornerRadius = 48 / 2
    }
    
    @IBAction func handleSignInTapped(_ sender: Any) {
        
        // TODO: - Authentication flow & reclyer/driver logic
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "recyclerStoryboard") as! RecyclerController
        navigationController?.pushViewController(viewController, animated: true)
    }
}
