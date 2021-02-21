//
//  OrderCheckoutController.swift
//  Go Green
//
//  Created by Alan Cao on 2/21/21.
//

import UIKit

class OrderCheckoutController: UIViewController {
    
    @IBOutlet var orderTotalView: UIView!
    @IBOutlet var itemTotalLabel: UILabel!
    @IBOutlet var taxesAndFeesLabel: UILabel!
    @IBOutlet var orderTotalLabel: UILabel!
    @IBOutlet var placeTicketButton: UIButton!
    
    var lessThan24ozValue: Double = 0.00
    var greaterThanEqual24ozValue: Double = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    func calculateTaxesAndFees(itemTotal: Double) -> Double {
        let fees = itemTotal * 0.30
        let taxes = (itemTotal + fees) * 0.08
        let total = fees + taxes
        return total
    }

    func configureUI() {
        orderTotalView.layer.borderColor = UIColor.black.cgColor
        orderTotalView.layer.borderWidth = 0.5
        
        let itemTotal = lessThan24ozValue + greaterThanEqual24ozValue
        itemTotalLabel.text = "$\(String(format: "%.2f", itemTotal))"
        
        let taxesAndFees = calculateTaxesAndFees(itemTotal: itemTotal)
        taxesAndFeesLabel.text = "$\(String(format: "%.2f", taxesAndFees))"
        orderTotalLabel.text = "$\(String(format: "%.2f", itemTotal - taxesAndFees))"
        
        placeTicketButton.layer.cornerRadius = 48 / 2
    }
    
    @IBAction func handlePlaceTicketTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "success") as! SuccessController
        viewController.successMessage = "Congratulations! Your order has been placed and a driver will arrive shortly."
        present(viewController, animated: true) {
            Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(self.timerFired), userInfo: nil, repeats: false)
        }
    }
    
    @objc func timerFired() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "orderInformation") as! RecyclerOrderInformationController
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.modalPresentationStyle = .fullScreen
        navigationController.navigationBar.prefersLargeTitles = true
        dismiss(animated: true) {
            self.present(navigationController, animated: true, completion: nil)
        }
    }
}
