//
//  ViewController.swift
//  MetaVideoPlayer
//
//  Created by Juan Manuel Moreno on 20/06/23.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.playVideo()
    }
    
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "Vargas", ofType: "mp4") else {
            debugPrint("KO")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        self.present(playerController, animated: true)
                              player.play()
    }
}

