//
//  DividerView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/08/27.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct DividerView: View {
    
    var body: some View {
        VStack {
            Text("Hello")
            Divider()
            Text("World!")
        }
    }
}

struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        DividerView()
    }
}
 
