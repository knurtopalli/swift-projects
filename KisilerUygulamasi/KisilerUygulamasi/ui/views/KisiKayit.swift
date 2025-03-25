//
//  KisiKayit.swift
//  KisilerUygulamasi
//
//  Created by Nur Topalli on 10.03.2025.
//

import UIKit

class KisiKayit: UIViewController {

    @IBOutlet weak var tfKisiAd: UITextField!
    @IBOutlet weak var tfKisiTel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonKaydet(_ sender: Any) {
        if let ka = tfKisiAd.text, let kt = tfKisiTel.text {
            kaydet(kisiAd: ka, kisiTel: kt)
        }
    }
    
    func kaydet (kisiAd: String, kisiTel: String) {
        print("Kişi Kaydet : \(kisiAd) - \(kisiTel)")
    }
    
}
