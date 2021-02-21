//
//  RecyclerOrderInformationController.swift
//  Go Green
//
//  Created by Alan Cao on 2/20/21.
//

import UIKit

class RecyclerOrderInformationController: UIViewController {

    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var checkoutButton: UIButton!
    @IBOutlet var lessThan24ozTextField: UITextField!
    @IBOutlet var greaterThanEqual24ozTextField: UITextField!
    var lessThan24ozTotal = 0
    var greaterThanEqual24ozTotal = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    func configureUI() {
        totalLabel.layer.cornerRadius = 16
        checkoutButton.layer.cornerRadius = 48 / 2
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleCancelOrder))
    }
    
    func configureTextFields() {
       
    }
    
    @objc func handleCancelOrder() {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func handleQuantityChanged(_ sender: UITextField) {
        switch sender {
        case lessThan24ozTextField:
            guard let lessThan24ozString = sender.text else { return }
            
            if let lessThan24oz = Int(lessThan24ozString) {
                lessThan24ozTotal = lessThan24oz
            } else {
                lessThan24ozTotal = 0
            }
        case greaterThanEqual24ozTextField:
            guard let greaterThanEqual24ozString = sender.text else { return }
            
            if let greaterThanEqual24oz = Int(greaterThanEqual24ozString) {
                greaterThanEqual24ozTotal = greaterThanEqual24oz
            } else {
                greaterThanEqual24ozTotal = 0
            }
        default: break
        }
        let total = lessThan24ozTotal + greaterThanEqual24ozTotal

        totalLabel.text = "Total \(total) items"
    }
    
    @IBAction func handleCheckoutTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "orderCheckout") as! OrderCheckoutController
        viewController.lessThan24ozValue = Double(lessThan24ozTotal) * 0.05
        viewController.greaterThanEqual24ozValue = Double(greaterThanEqual24ozTotal) * 0.10
        navigationController?.pushViewController(viewController, animated: true)
    }
}

