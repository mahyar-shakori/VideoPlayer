//
//  ViewController.swift
//  VideoPlayer
//
//  Created by MahyR Sh on 11/22/22.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func playerButtonTapped(_ sender: Any) {
        
        if let path = Bundle.main.path(forResource: "Video", ofType: ".mp4") {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer, animated: true, completion: {
                video.play()
            })
        }
    }
}
