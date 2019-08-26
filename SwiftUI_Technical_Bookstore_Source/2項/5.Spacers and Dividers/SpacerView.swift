//
//  SpacerView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/08/27.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct SpacerView: View {
    
    var body: some View {
        VStack {
            Text("Hello")
            Spacer()
            Text("World!")
        }
        .frame(height: 100)
    }
}

struct SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
    }
}
