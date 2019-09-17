//
//  PlayerListView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/08.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct PlayerListView: View {
    
    @ObservedObject var observer = PlayerObject.observer
    @ObservedObject var viewModel: PlayerViewModel
    
    var body: some View {
        List(viewModel.players) { model in
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
                    print("----onAppear", model.id)
                    self.observer.load(url: model.url)
                }
                .onDisappear {
                    print("----onDisappear", model.id)
                    self.observer.dispose()
                }
                .frame(height: 300)
        }
        .onAppear() {
            self.viewModel.onAppear()
        }
        .frame(height: 300)
    }
}

struct PlayerListView_Previews: PreviewProvider {
    
    static var previews: some View {
        PlayerListView(viewModel: PlayerViewModel())
    }
}
