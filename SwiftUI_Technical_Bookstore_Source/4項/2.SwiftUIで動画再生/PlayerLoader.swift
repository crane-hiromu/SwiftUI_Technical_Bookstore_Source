//
//  PlayerManager.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/09.
//  Copyright © 2019 h.crane. All rights reserved.
//

import UIKit
import AVKit

// MARK: - Manager

final class PlayerLoader: ObservableObject {
    
    static let shard = PlayerLoader()
    private init() {}
    
    var player: AVPlayer = AVPlayer()
    var playerItem: AVPlayerItem?
    private var observation: [NSKeyValueObservation] = []
}


// MARK: - Internal

extension PlayerLoader {
    
    func load(url: URL) {
        let item = AVPlayerItem(url: url)
        playerItem = item
        player.replaceCurrentItem(with: item)
        
        removeObserve()
        addObserve(item: item)
    }
    
    func load(urlStr: String) {
        guard let url = URL(string: urlStr) else {
            dispose()
            return
        }
        load(url: url)
    }
    
    func addObserve(item: AVPlayerItem) {
        let statusObserver = item.observe(\.status) { [weak self] i, _ in
            guard let self = self else { return }
            
            switch i.status {
            case .readyToPlay:
                self.player.play()
            default:
                self.player.pause()
            }
        }
        observation.append(statusObserver)
    }
    
    func removeObserve() {
        observation.forEach { $0.invalidate() }
        observation = []
    }
    
    func dispose() {
        player.replaceCurrentItem(with: nil)
        playerItem = nil
        removeObserve()
    }
}


/* video demo urls */

let demoBaseUrl = "https://download.videvo.net/videvo_files/"

let demoUrls: [String] = [
    "video/premium/video0038/small_watermarked/la_freewaysnight2_preview.mp4",
    "video/premium/video0034/small_watermarked/airport_rush01_preview.mp4",
    "video/premium/video0034/small_watermarked/airport_rush05_preview.mp4",
    "video/free/2019-09/small_watermarked/190828_04_ChangiAirport_UHD_11_preview.mp4",
    "converted/2015_08/videos/airportterminal.mov21420.mp4",
    "converted/2015_08/videos/womaninterminal.mov40583.mp4"
]
