//
//  Player.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/05.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI
import AVKit

// MARK: - Player

struct Player: Identifiable {
        
    var id: String
    var player: AVPlayer?
    
    init(player: AVPlayer? = nil) {
        self.player = player
        self.id = UUID().uuidString
    }
    
    init(item: AVPlayerItem?) {
        self.init(player: AVPlayer(playerItem: item))
    }
    
    init(url: URL) {
        self.init(player: AVPlayer(url: url))
    }
}


// MARK: - UIViewRepresentable

extension Player: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIView {
        return PlayerView(player: player)
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
//        (uiView as? PlayerView)?.update(player: player)
    }
}

extension Player {
    
    func didChange(
        _ status: Binding<AVPlayerItem.Status>,
        handler: @escaping (Player, AVPlayerItem.Status) -> Void
    ) -> Player {
        
        handler(self, status.wrappedValue)
        return self
    }
}
