//
//  PlayerRow.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/17.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI
import AVKit

struct PlayerRow: View {

    var model: PlayerModel
    @ObservedObject var observer = PlayerObject.observer

    var body: some View {
        Player(url: model.url)
//            .didChange(self.$observer.status) { player, status in
//                switch status {
//                case .readyToPlay:
//                    player.play()
//                default:
//                    player.pause()
//                }
//            }
//            .onAppear() {
//                print("---.onAppear", self.model.id)
//                self.observer.load(url: self.model.url)
//            }
//            .onDisappear {
//                print("---.onDisappear", self.model.id)
//                self.observer.dispose()
//            }
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(model: PlayerModel(id: "", url: URL(string: "")!))
    }
}
