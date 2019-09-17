//
//  PlayerManagerDelegate.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/15.
//  Copyright © 2019 h.crane. All rights reserved.
//

import AVKit

// MARK: - Delegate

protocol PlayerManagerDelegate: class {
    func player(didUpdate player: AVPlayer)
    func player(didChange status: AVPlayerItem.Status)
}
