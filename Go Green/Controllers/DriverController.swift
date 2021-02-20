//
//  DriverController.swift
//  Go Green
//
//  Created by Alan Cao on 2/20/21.
//

import MapKit
import UIKit

class DriverController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    private let locationManager = CLLocationManager()
    
    private let searchController: UISearchController = {
        let searchController = UISearchController()
        searchController.searchBar.placeholder = "Find recycling centers near you"
        return searchController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        enableLocationServices()
        configureUI()
        
    }

    func configureUI() {
        configureMapView()
        
        navigationItem.searchController = searchController
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
}
