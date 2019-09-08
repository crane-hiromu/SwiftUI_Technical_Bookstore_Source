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
            player.replaceCurrentItem(with: nil)
            removeObserve()
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
}
