//
//  DriverOrderInformationController.swift
//  Go Green
//
//  Created by Alan Cao on 2/21/21.
//

import UIKit

class DriverOrderInformationController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var distanceLabel: UILabel!
    @IBOutlet var lessThan24ozLabel: UILabel!
    @IBOutlet var greaterThanEqual24ozLabel: UILabel!
    @IBOutlet var startNavigationButton: UIButton!
    
    var name: String = "John Doe"
    var distance: Double = 0.0
    var lessThan24ozQuantity: Int = 0
    var greaterThanEqual24oz: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    func configureUI() {
        nameLabel.layer.cornerRadius = 8
        nameLabel.layer.borderWidth = 0.5
        nameLabel.layer.borderColor = UIColor.black.cgColor
        
        distanceLabel.layer.cornerRadius = 8
        lessThan24ozLabel.layer.cornerRadius = 8
        greaterThanEqual24ozLabel.layer.cornerRadius = 8
        startNavigationButton.layer.cornerRadius = 48 / 2
        
        nameLabel.text = name
        distanceLabel.text = "\(String(format: "%.1f", distance)) mi."
        lessThan24ozLabel.text = "10 items"
        greaterThanEqual24ozLabel.text = "7 items"
    }
    
    @IBAction func handleStartNavigationTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "success") as! SuccessController
        viewController.successMessage = "Successfully picked up recyclables!"
        present(viewController, animated: true) {
            Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(self.timerFired), userInfo: nil, repeats: false)
        }
    }
    
    @objc func timerFired() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "driverStoryboard") as! DriverController
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.modalPresentationStyle = .fullScreen
        navigationController.navigationBar.prefersLargeTitles = true
        dismiss(animated: true) {
            self.present(navigationController, animated: true, completion: nil)
        }
    }
}
