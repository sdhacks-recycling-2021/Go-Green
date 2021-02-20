//
//  RecyclerController.swift
//  Go Green
//
//  Created by Alan Cao on 2/20/21.
//

import UIKit

class RecyclerController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }

    func configureUI() {
        navigationController?.navigationBar.isHidden = true
    }
}
