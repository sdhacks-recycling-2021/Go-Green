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
    @IBOutlet var driverRecyclerSC: UISegmentedControl!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var signInButton: UIButton!
    @IBOutlet var signUpButton: UIButton!
    @IBOutlet var logoLabel: UILabel!
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    func configureUI() {
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = false
        
        emailTextField.widthAnchor.constraint(equalToConstant: view.frame.width - 80).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        passwordTextField.isSecureTextEntry = true
        passwordTextField.widthAnchor.constraint(equalToConstant: view.frame.width - 80).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        signInButton.widthAnchor.constraint(equalToConstant: view.frame.width - 80).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        signInButton.layer.cornerRadius = 48 / 2
    }
    
    @IBAction func handleSCToggled(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            view.backgroundColor = .white
            logoLabel.textColor = .systemGreen
            signInButton.setTitleColor(.white, for: .normal)
            signInButton.backgroundColor = .systemGreen
            navigationController?.navigationBar.barTintColor = .white
            signUpButton.setTitleColor(.systemGreen, for: .normal)
        case 1:
            view.backgroundColor = .systemGreen
            logoLabel.textColor = .white
            signInButton.setTitleColor(.systemGreen, for: .normal)
            signInButton.backgroundColor = .white
            navigationController?.navigationBar.barTintColor = .systemGreen
            signUpButton.setTitleColor(.white, for: .normal)
        default: print("DEBUG: handleSCToggled default case")
        }
    }
    
    @IBAction func handleSignInTapped(_ sender: Any) {
        
        // TODO: - Authentication flow
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        switch driverRecyclerSC.selectedSegmentIndex {
        case 0:
            storyboard.instantiateViewController(identifier: "driverStoryboard")
            performSegue(withIdentifier: "handleDriverSignInTapped", sender: nil)
        case 1:
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = storyboard.instantiateViewController(identifier: "orderInformation") as! RecyclerOrderInformationController
            let navigationController = UINavigationController(rootViewController: viewController)
            navigationController.modalPresentationStyle = .fullScreen
            navigationController.navigationBar.prefersLargeTitles = true
            present(navigationController, animated: true, completion: nil)
        default: break
        }
    }
}
