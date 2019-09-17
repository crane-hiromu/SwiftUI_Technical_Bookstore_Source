//
//  PlayerView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/05.
//  Copyright © 2019 h.crane. All rights reserved.
//

import UIKit
import AVKit

// MARK: - View

final class PlayerView: UIView {
    
    private let playerLayer = AVPlayerLayer()
    
    init(player: AVPlayer?) {
        super.init(frame: .zero)
        
        playerLayer.player = player
        layer.addSublayer(playerLayer)
    }
    
    required init?(coder: NSCoder) { fatalError() }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        playerLayer.frame = bounds
    }
    
    deinit {
        PlayerObject.observer.dispose()
    }
}

extension PlayerView {
    
    func update(player: AVPlayer?) {
        playerLayer.player = player
    }
    
    func play() {
        playerLayer.player?.play()
    }
    
    func pause() {
        playerLayer.player?.pause()
    }
}
