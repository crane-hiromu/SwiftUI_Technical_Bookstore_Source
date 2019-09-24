//
//  PlayerViewModel.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/17.
//  Copyright © 2019 h.crane. All rights reserved.
//

import AVKit

final class PlayerViewModel: ObservableObject {
    
    @Published var players: [PlayerModel] = []
    
    func onAppear() {
        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
            self.players =  demoUrls.enumerated().map {
                PlayerModel(id: String($0.offset),
                            url: URL(string: $0.element)!)
            }
        }
        
    }
}

struct PlayerModel: Identifiable {
    let id: String
    let url: URL
}


/* video demo urls */

public let demoURL = "https://download.videvo.net/videvo_files/video/premium/video0038/small_watermarked/la_freewaysnight2_preview.mp4"

public let demoBaseUrl = "https://download.videvo.net/videvo_files/"

public let demoUrls: [String] = [
//    "video/premium/video0038/small_watermarked/la_freewaysnight2_preview.mp4",
//    "video/premium/video0034/small_watermarked/airport_rush01_preview.mp4",
//    "video/premium/video0034/small_watermarked/airport_rush05_preview.mp4",
//    "video/free/2019-09/small_watermarked/190828_04_ChangiAirport_UHD_11_preview.mp4",
//    "converted/2015_08/videos/airportterminal.mov21420.mp4",
//    "converted/2015_08/videos/womaninterminal.mov40583.mp4",
//    "video/premium/video0038/small_watermarked/la_freewaysnight2_preview.mp4",
//    "video/premium/video0034/small_watermarked/airport_rush01_preview.mp4",
//    "video/premium/video0034/small_watermarked/airport_rush05_preview.mp4",
//    "video/free/2019-09/small_watermarked/190828_04_ChangiAirport_UHD_11_preview.mp4",
//    "converted/2015_08/videos/airportterminal.mov21420.mp4",
//    "converted/2015_08/videos/womaninterminal.mov40583.mp4",
//    "video/premium/video0038/small_watermarked/la_freewaysnight2_preview.mp4",
//    "video/premium/video0034/small_watermarked/airport_rush01_preview.mp4",
//    "video/premium/video0034/small_watermarked/airport_rush05_preview.mp4",
//    "video/free/2019-09/small_watermarked/190828_04_ChangiAirport_UHD_11_preview.mp4",
//    "converted/2015_08/videos/airportterminal.mov21420.mp4"
]


