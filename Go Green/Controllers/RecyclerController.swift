//
//  RecyclerController.swift
//  Go Green
//
//  Created by Alan Cao on 2/20/21.
//

import MapKit
import UIKit

class RecyclerController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet var mapView: MKMapView!
    private let locationManager = CLLocationManager()
    
    private let searchController: UISearchController = {
        let searchController = UISearchController()
        searchController.searchBar.placeholder = "Find recycling centers near you"
        return searchController
    }()
    
    private let placeOrderButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("+", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 48).isActive = true
        button.heightAnchor.constraint(equalToConstant: 48).isActive = true
        button.layer.cornerRadius = 48 / 2
        button.backgroundColor = .systemGreen
        button.addTarget(self, action: #selector(handlePlaceOrderTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        enableLocationServices()
        configureUI()
        
    }

    func configureUI() {
        configureMapView()
        
        navigationItem.searchController = searchController
        
        view.addSubview(placeOrderButton)
        placeOrderButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true
        placeOrderButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
    }
    
    func configureMapView() {
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
    }
    
    func enableLocationServices() {
        switch CLLocationManager.authorizationStatus(){
        case .notDetermined: locationManager.requestWhenInUseAuthorization()
        case .restricted, .denied: break
        case .authorizedAlways:
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        case .authorizedWhenInUse: locationManager.requestAlwaysAuthorization()
        @unknown default: break
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            locationManager.requestAlwaysAuthorization()
        }
    }
    
    @objc func handlePlaceOrderTapped() {
        // TODO: - Place order screen
    }
}
