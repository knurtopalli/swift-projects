//
//  ViewController.swift
//  Core Location Framework
//
//  Created by Nur Topalli on 5.11.2024.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    var locationManager: CLLocationManager = CLLocationManager()
    
    @IBOutlet weak var enlemLabel: UILabel!
    @IBOutlet weak var boylamLabel: UILabel!
    @IBOutlet weak var hizLabel: UILabel!
    
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
        
        enlemLabel.text = String(sonKonum.coordinate.latitude)
        boylamLabel.text = String(sonKonum.coordinate.longitude)
        hizLabel.text = String(sonKonum.speed)  
    }
}
