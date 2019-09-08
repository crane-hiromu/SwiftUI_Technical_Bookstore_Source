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
        
    let id: String
    var player: AVPlayer?
    
    init(player: AVPlayer?) {
        self.player = player
        self.id = UUID().uuidString
    }
}


// MARK: - UIViewRepresentable

extension Player: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIView {
        return PlayerView(player: player)
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
//        (uiView as? PlayerView)?.updatePlayer(player: player)
    }
}
