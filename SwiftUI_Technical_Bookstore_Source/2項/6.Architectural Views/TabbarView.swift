//
//  TabbarView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/01.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct TabbarView: View {
    
    var body: some View {
        TabView {
            Text("First View")
                .font(.title)
                .tabItem({ Text("FirstTabItem") })
                .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem({ Text("SecondTabItem") })
                .tag(1)
        }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
