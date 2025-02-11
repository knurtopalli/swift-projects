//
//  ViewController.swift
//  TasarimCalismasi
//
//  Created by Nur Topalli on 19.12.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self .navigationItem.title = "Pizza"
        
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(named: "anaRenk")
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk1")!, .font: UIFont(name: "Pacifico-Regular", size: .init(22))!]
        
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }


}

