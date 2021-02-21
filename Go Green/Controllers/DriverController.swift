//
//  DriverController.swift
//  Go Green
//
//  Created by Alan Cao on 2/20/21.
//

import MapKit
import UIKit

class DriverController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    var names: [String] = ["Mary C.", "Anthony W.", "Chris B.", "John R.", "Jason K."]
    var distances: [Double] = [0.4, 0.8, 1.5, 1.8, 2.2]
    
    override func viewDidLoad() {
        
        configureTableView()
    }
    
    func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.rowHeight = 64
    }
}

extension DriverController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let name = names[indexPath.row]
        let distance = distances[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "recyclerCell") as! RecyclerCell
        cell.nameLabel.text = name
        cell.distanceLabel.text = "\(String(format: "%.1f", distance)) mi."
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let viewController = storyboard?.instantiateViewController(identifier: "driverOrderInformation") as? DriverOrderInformationController {
            let distance = distances[indexPath.row]
            let name = names[indexPath.row]
            
            viewController.name = name
            viewController.distance = distance
            navigationController?.pushViewController(viewController, animated: true)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
