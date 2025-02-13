//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Nur Topalli on 14.01.2025.
//

import UIKit

class AnasayfaVC: UIViewController {
    @IBOutlet weak var labelAnasayfa: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelAnasayfa.text = "Hoşgeldin"
    }
    @IBAction func ButtonYap(_ sender: Any) {
        labelAnasayfa.text = "Merhaba"
    }
    
    @IBAction func ButtonBasla(_ sender: Any) {
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: nil)
    }
    
}

