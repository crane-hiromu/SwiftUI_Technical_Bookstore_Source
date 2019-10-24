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
    
    let player = Player(url: URL(string: demoURL)!)
    
    var body: some View {
        VStack {
            ForEach(Range(1...16)) { row in
                self.player.onAppear {
                    self.player.play()
                }
            }
        }

    }
}

struct PlayerDemoView_Previews: PreviewProvider {

    static var previews: some View {
        PlayerDemoView()
    }
}
