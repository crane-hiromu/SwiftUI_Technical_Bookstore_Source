//
//  PlayerRow.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/08.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {
    
    @ObservedObject var manager = PlayerLoader.shard
    
    let player: Player
    
    var body: some View {
        player
    }
}
