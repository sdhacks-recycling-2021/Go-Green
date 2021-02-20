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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        enableLocationServices()
        configureUI()
        
    }

    func configureUI() {
        navigationController?.navigationBar.isHidden = true
        
        configureMapView()
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
