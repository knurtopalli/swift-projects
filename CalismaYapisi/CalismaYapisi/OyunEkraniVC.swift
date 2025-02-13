//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by Nur Topalli on 15.01.2025.
//

import UIKit

class OyunEkraniVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ButtonBitir(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
    @IBAction func ButtonGeri(_ sender: Any) {
        //navigationController?.popViewController(animated: true)
    }
    

}
