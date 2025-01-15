//
//  DetayVC.swift
//  ProtocolKullanimi
//
//  Created by Nur Topalli on 11.11.2024.
//

import UIKit

class DetayVC: UIViewController {
    @IBOutlet weak var girdi: UITextField!
    
    var delegate:DetayVCtoViewControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func gonderButton(_ sender: Any) {
        if let mesaj = girdi.text {
            delegate?.veriGonder(mesaj: mesaj)
        }
    }
    
}
