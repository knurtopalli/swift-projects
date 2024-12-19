//
//  ViewController.swift
//  Core Location ve Map Kit Kullanimi
//
//  Created by Nur Topalli on 6.11.2024.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var enlem: UILabel!
    @IBOutlet weak var boylam: UILabel!
    @IBOutlet weak var hiz: UILabel!
    
    var locationManager: CLLocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }

}

extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let sonKonum: CLLocation = locations.last!
        enlem.text = String(sonKonum.coordinate.latitude)
        boylam.text = String(sonKonum.coordinate.longitude)
        hiz.text = String(sonKonum.speed)
        
        let konum = CLLocationCoordinate2D(latitude: sonKonum.coordinate.latitude, longitude: sonKonum.coordinate.longitude)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let bolge = MKCoordinateRegion(center: konum, span: span)
        
        mapView.setRegion(bolge, animated: true)
        
        mapView.showsUserLocation = true
    }
}

