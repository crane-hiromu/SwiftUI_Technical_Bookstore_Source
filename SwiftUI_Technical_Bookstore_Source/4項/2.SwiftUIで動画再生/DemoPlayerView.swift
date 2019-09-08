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
    
    @ObservedObject var manager = PlayerLoader.shard
    
    var body: some View {
        Player(player: $manager.player.wrappedValue)
            .onAppear() {
                self.manager.load(urlStr: "\(demoBaseUrl)\(demoUrls[0])")
            }
    }
}

struct DemoPlayerView_Previews: PreviewProvider {

    static var previews: some View {
        DemoPlayerView()
    }
}

/* video demo urls */

let demoBaseUrl = "https://download.videvo.net/videvo_files/"

let demoUrls: [String] = [
    "video/premium/video0038/small_watermarked/la_freewaysnight2_preview.mp4",
    "video/premium/video0034/small_watermarked/airport_rush01_preview.mp4",
    "video/premium/video0034/small_watermarked/airport_rush05_preview.mp4",
    "video/free/2019-09/small_watermarked/190828_04_ChangiAirport_UHD_11_preview.mp4",
    "converted/2015_08/videos/airportterminal.mov21420.mp4",
    "converted/2015_08/videos/womaninterminal.mov40583.mp4"
]
