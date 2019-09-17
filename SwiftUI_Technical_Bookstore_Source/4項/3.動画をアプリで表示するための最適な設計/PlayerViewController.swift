//
//  PlayerViewController.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/16.
//  Copyright © 2019 h.crane. All rights reserved.
//

import UIKit
import AVKit
import SwiftUI

// MARK: - Controller

final class PlayerViewController: UIViewController {
    
    private lazy var playerView = PlayerView(player: nil)
    
    override func loadView() {
        super.loadView()
         
        self.view = playerView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PlayerManager.shard.delegate = self
        PlayerManager.shard.load(url: URL(string: demoURL)!)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        PlayerManager.shard.dispose()
    }
}


// MARK: - PlayerManagerDelegate

extension PlayerViewController: PlayerManagerDelegate {
    
    func player(didUpdate player: AVPlayer) {
        playerView.update(player: player)
    }
    
    func player(didChange status: AVPlayerItem.Status) {
        switch status {
        case .readyToPlay:
            playerView.play()
        default:
            playerView.pause()
        }
    }
}


// MARK: - UIViewControllerRepresentable

extension PlayerViewController: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = PlayerViewController
    
    func makeUIViewController(
        context: UIViewControllerRepresentableContext<PlayerViewController>
    ) -> PlayerViewController {
        
        return PlayerViewController()
    }
    
    func updateUIViewController(
        _ uiViewController: PlayerViewController,
        context: UIViewControllerRepresentableContext<PlayerViewController>
    ) {
        
        // do nothing
    }
}
