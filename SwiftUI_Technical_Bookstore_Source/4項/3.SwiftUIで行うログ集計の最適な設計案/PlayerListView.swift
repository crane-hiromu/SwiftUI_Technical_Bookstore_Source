//
//  PlayerListView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/08.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct PlayerListView: View {
    
    @ObservedObject var viewModel: PlayerViewModel
    
    var body: some View {
        List(viewModel.players) { player in
            PlayerRow(player: player)
                .frame(height: 300)
                .onAppear(perform: {
                    player.play()
                    print("------play")
                })
                .onDisappear(perform: {
                    player.pause()
                    print("------pause")
                })
        }
        .frame(width: UIScreen.main.bounds.width, height: 300)
    }
}

struct PlayerListView_Previews: PreviewProvider {
    
    static var previews: some View {
        PlayerListView(viewModel: PlayerViewModel())
    }
}
