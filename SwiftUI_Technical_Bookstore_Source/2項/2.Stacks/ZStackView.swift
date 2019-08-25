//
//  ZStackView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/08/26.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct ZStackView: View {
    
    var body: some View {
        ZStack(alignment: .center) {
            Text("Hello")
            Text("World!")
        }
    }
}

struct ZStackView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackView()
    }
}
