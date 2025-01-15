//
//  ViewController.swift
//  ProtocolKullanimi
//
//  Created by Nur Topalli on 11.11.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelSonuc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func gecisButton(_ sender: Any) {
        performSegue(withIdentifier: "toDetay", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            let gidilecekVC = segue.destination as! DetayVC
            gidilecekVC.delegate = self //yetkilendirme
            
        }
    }
    
    
}

extension ViewController:DetayVCtoViewControllerProtocol{
    func veriGonder(mesaj: String) {
        labelSonuc.text = mesaj
    }
}
