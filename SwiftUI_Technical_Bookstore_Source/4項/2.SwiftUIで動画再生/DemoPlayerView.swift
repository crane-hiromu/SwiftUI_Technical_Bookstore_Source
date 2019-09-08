//
//  DemoPlayerView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/05.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI
import AVKit

struct DemoPlayerView: View {
    
    @ObservedObject var loader = PlayerLoader.shard
    
    var body: some View {
        Player(player: $loader.player.wrappedValue)
            .onAppear() {
                self.loader.load(urlStr: "\(demoBaseUrl)\(demoUrls[0])")
            }
            .onDisappear {
                self.loader.dispose()
            }
    }
}

struct DemoPlayerView_Previews: PreviewProvider {

    static var previews: some View {
        DemoPlayerView()
    }
}
