//
//  PlayerViewModel.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/08.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

final class PlayerViewModel: ObservableObject {

    @Published var players: [Player]
    
    init() {
        players = []
//        players = demoUrls.map { Player(urlStr: "\(demoBaseUrl)\($0)") }
    }
}
