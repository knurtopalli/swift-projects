//
//  ViewController.swift
//  Video Player
//
//  Created by Nur on 28.10.2024.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func playVideo() {
        
        guard let path = Bundle.main.path(forResource: "me", ofType: "MOV") else{
            debugPrint("me.MOV not found")
            return
        }
        
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true)
        player.play()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }


}

