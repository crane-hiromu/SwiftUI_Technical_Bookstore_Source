//
//  DemoPlayerView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/05.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI
import AVKit

struct PlayerDemoView: View {
    
    var body: some View {
        let player = Player(url: URL(string: "https://..")!)
        player.play()
        return player
    }
}

struct PlayerDemoView_Previews: PreviewProvider {

    static var previews: some View {
        PlayerDemoView()
    }
}
