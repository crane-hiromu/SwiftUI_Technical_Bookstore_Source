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
        List(viewModel.players) { model in
            PlayerRow(model: model)
                .frame(height: UIScreen.main.bounds.height)
        }
        .onAppear() {
            self.viewModel.onAppear()
        }
    }
}

struct PlayerListView_Previews: PreviewProvider {
    
    static var previews: some View {
        PlayerListView(viewModel: PlayerViewModel())
    }
}
