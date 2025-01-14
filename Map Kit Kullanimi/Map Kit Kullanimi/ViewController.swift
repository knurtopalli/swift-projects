//
//  ViewController.swift
//  Map Kit Kullanimi
//
//  Created by Nur Topalli on 6.11.2024.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //40.999498, 29.047154
        
        let konum = CLLocationCoordinate2D(latitude: 40.999498, longitude: 29.047154)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        
        let bolge = MKCoordinateRegion(center: konum, span: span)
        
        mapView.setRegion(bolge, animated: true)
        
        let pin = MKPointAnnotation()
        
        pin.coordinate = konum
        pin.title = "Kadıköy Başlık"
        pin.subtitle = "Alt başlık"
        
        mapView.addAnnotation(pin)
        
    }


}

