//
//  Playerable.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/05.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI
import AVKit

protocol Playerable {
    var player: AVPlayer? { get set }
    
    func play()
    func pause()
}

extension Playerable where Self: UIViewRepresentable {
    
    func play() {
        player?.play()
    }
    
    func pause() {
        player?.pause()
    }
}

extension Player: Playerable {}
