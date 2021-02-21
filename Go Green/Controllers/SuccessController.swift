//
//  SuccessController.swift
//  Go Green
//
//  Created by Alan Cao on 2/21/21.
//

import UIKit

class SuccessController: UIViewController {
    
    @IBOutlet var successMessageLabel: UILabel!
    var successMessage: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let message = successMessage {
            successMessageLabel.text = message
        }
    }
}
