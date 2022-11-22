//
//  secondWay.swift
//  VideoPlayer
//
//  Created by MahyR Sh on 11/22/22.
//

import UIKit
import AVKit
import AVFoundation

class secondWay: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // vide player
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "Video", ofType: ".mp4")!))
        
       let layer = AVPlayerLayer(player: player)
        layer.frame = view.bounds
        
        // full size
        layer.videoGravity = .resizeAspectFill
        // set volume
        player.volume = 10
        //
        view.layer.addSublayer(layer)
        player.play()
    }
}
