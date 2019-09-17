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

final class PlayerManager {
    
    static let shard = PlayerManager()
    private init() { }
    
    weak var delegate: PlayerManagerDelegate?
    private let player: AVPlayer = AVPlayer()
    private var observation: [NSKeyValueObservation] = []
}


// MARK: - Internal

extension PlayerManager {
    
    func load(url: URL) {
        let item = AVPlayerItem(url: url)
        
        removeObserve()
        addItemObserve()
        addStatusObserve(item: item)
        player.replaceCurrentItem(with: item)
    }
    
    func addItemObserve() {
        let observer = player.observe(\.currentItem) { [weak self] player, _ in
            guard let self = self else { return }
            self.delegate?.player(didUpdate: player)
        }
        observation.append(observer)
    }
    
    func addStatusObserve(item: AVPlayerItem) {
        let observer = item.observe(\.status) { [weak self] playerItem, _ in
            guard let self = self else { return }
            self.delegate?.player(didChange: playerItem.status)
        }
        observation.append(observer)
    }

    func removeObserve() {
        observation.forEach { $0.invalidate() }
        observation = []
    }
    
    func dispose() {
        removeObserve()
        delegate = nil
        player.replaceCurrentItem(with: nil)
    }
}
