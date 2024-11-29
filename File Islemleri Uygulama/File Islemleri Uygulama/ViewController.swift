//
//  ViewController.swift
//  File Islemleri Uygulama
//
//  Created by Nur on 2.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldGirdi: UITextField!
    @IBOutlet weak var resimTutucu: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func yaz(_ sender: Any) {
        
        let mesaj:String = textFieldGirdi.text!
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("dosya.txt")
            
            do {
                
                try mesaj.write(to: dosyaYolu, atomically: false, encoding: String.Encoding.utf8)
                
                textFieldGirdi.text = ""
                
            }catch {
                print ("Dosya yazılırken hata oluştu")
            }
            
        }
        
    }
    @IBAction func oku(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("dosya.txt")
            
            do {
                
                textFieldGirdi.text = try String(contentsOf: dosyaYolu, encoding: String.Encoding.utf8)
                
            }catch {
                print ("Dosya okunurken hata oluştu")
            }
            
        }
        
    }
    @IBAction func sil(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("dosya.txt")
            
            if FileManager.default.fileExists(atPath: dosyaYolu.path) {
                
                do {
                    
                    try FileManager.default.removeItem(at: dosyaYolu)
                    textFieldGirdi.text = ""
                    
                }catch {
                    print ("Dosya silinirken hata oluştu")
                }
                
            }
            
            
        }
        
    }
    @IBAction func resimKaydet(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("resimim.png")
            let resim = UIImage(named: "86")
            
            do {
                
                try resim!.pngData()?.write(to: dosyaYolu)
                
            }catch {
                print ("Resim alinirken hata oluştu")
            }
            
        }
        
    }
    @IBAction func resimGoster(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("resimim.png")
            self.resimTutucu.image = UIImage(contentsOfFile: dosyaYolu.path)
        }
        
    }
    @IBAction func resimSil(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("resimim.png")
            
            if FileManager.default.fileExists(atPath: dosyaYolu.path) {
                
                do {
                    
                    try FileManager.default.removeItem(at: dosyaYolu)
                    
                    
                }catch {
                    print ("Resim silerken hata oluştu")
                }
                
            }
            
        }
    }
}

