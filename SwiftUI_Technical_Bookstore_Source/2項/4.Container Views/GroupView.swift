//
//  GroupView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/08/26.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct GroupView: View {
    
    var body: some View {
        VStack {
            Group {
                Text("Hello World!")
                Text("Hello World!")
                Text("Hello World!")
            }
        }
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
