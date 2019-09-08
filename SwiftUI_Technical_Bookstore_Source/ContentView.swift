//
//  ContentView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/08/25.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: TextView()) {
                    Text("1.UIKitとSwiftUI")
                }
                NavigationLink(destination: TextView()) {
                    Text("2.SwiftUIの基本的なView")
                }
                NavigationLink(destination: PlayerListView(viewModel: PlayerViewModel())) {
                    Text("3.SwiftUIの独自なUserInterface")
                }
                NavigationLink(destination: DemoPlayerView()) {
                    Text("4.SwiftUIで試みるログ集計")
                }
            }
            .navigationBarTitle(Text("SwiftUIによる実装"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
