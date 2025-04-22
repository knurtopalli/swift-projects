//
//  ViewController.swift
//  Date&TimePickerKullanimi
//
//  Created by Nur Topalli on 9.04.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tFSaat: UITextField!
    @IBOutlet weak var tFTarih: UITextField!
    
    var datePicker: UIDatePicker?
    var timePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        tFTarih.inputView = datePicker
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        tFSaat.inputView = timePicker
        
        // old version
        if #available(iOS 14.0, *) {
            datePicker?.preferredDatePickerStyle = .wheels
            timePicker?.preferredDatePickerStyle = .wheels
        }
        
        let dokunmaAlgilama = UITapGestureRecognizer(target: self, action: #selector(dokunmaAlgilamaMetodu))
        view.addGestureRecognizer(dokunmaAlgilama)
        
        datePicker?.addTarget(self, action: #selector(tarihGoster(uiDatePicker:)), for: .valueChanged)
        
        timePicker?.addTarget(self, action: #selector(saatGoster(uiDatePicker:)), for: .valueChanged)
        
    }
    
    @objc func dokunmaAlgilamaMetodu() {
        print("Ekrana dokunuldu")
        view.endEditing(true)
    }
    
    @objc func tarihGoster(uiDatePicker: UIDatePicker) {
        let format = DateFormatter()
        format.dateFormat = "MM/dd/yyyy"
        let alinanTarih = format.string(from: uiDatePicker.date)
        tFTarih.text = alinanTarih
    }
    
    @objc func saatGoster(uiDatePicker: UIDatePicker) {
        let format = DateFormatter()
        format.dateFormat = "HH:mm"
        let alinanSaat = format.string(from: uiDatePicker.date)
        tFSaat.text = alinanSaat
    }
}

