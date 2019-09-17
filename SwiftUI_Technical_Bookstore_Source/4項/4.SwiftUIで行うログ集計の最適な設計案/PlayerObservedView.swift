//
//  PlayerObservedView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/16.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI
import AVKit

struct PlayerObservedView: View {
    
    @ObservedObject var observer = PlayerObject.observer

    var body: some View {
        Player(player: self.$observer.player.wrappedValue)
            .didChange(self.$observer.status) { player, status in
                switch status {
                case .readyToPlay:
                    player.play()
                default:
                    player.pause()
                }
            }
            .onAppear() {
                self.observer.load(url: URL(string: demoURL)!)
            }
            .frame(height: 100)
    }
}

struct PlayerObservedView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerObservedView()
    }
}
