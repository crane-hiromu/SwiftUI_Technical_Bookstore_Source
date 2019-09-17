//
//  PlayerObject.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/15.
//  Copyright © 2019 h.crane. All rights reserved.
//

import UIKit
import AVKit

// MARK: - Publisher

final class PlayerObject: ObservableObject {
    
    static let observer = PlayerObject()
    private init() {}
    
    private var observation: [NSKeyValueObservation] = []
    
    @Published var player: AVPlayer = AVPlayer()
    @Published var status: AVPlayerItem.Status = .unknown
}


// MARK: - Internal

extension PlayerObject {
    
    func load(url: URL) {
        let item = AVPlayerItem(url: url)

        dispose()
        addItemObserve()
        addStatusObserve(item: item)
        player.replaceCurrentItem(with: item)
    }
    
    func addItemObserve() {
        let observer = player.observe(\.currentItem) { [weak self] player, _ in
            guard let self = self else { return }
            self.player = player
        }
        observation.append(observer)
    }
    
    func addStatusObserve(item: AVPlayerItem) {
        let observer = item.observe(\.status) { [weak self] playerItem, _ in
            guard let self = self else { return }
            self.status = playerItem.status
        }
        observation.append(observer)
    }
    
    func removeObserve() {
        observation.forEach { $0.invalidate() }
        observation = []
    }
    
    func dispose() {
        player.replaceCurrentItem(with: nil)
        status = .unknown
        removeObserve()
    }
}
