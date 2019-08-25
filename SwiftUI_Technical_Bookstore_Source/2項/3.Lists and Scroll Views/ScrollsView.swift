//
//  ScrollsView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/08/26.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct ScrollsView: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            Text("Hello world!").frame(height: 300)
            Text("Hello world!").frame(height: 300)
            Text("Hello world!").frame(height: 300)
            Text("Hello world!").frame(height: 300)
            Text("Hello world!").frame(height: 300)
        }
    }
}

struct ScrollsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollsView()
    }
}
