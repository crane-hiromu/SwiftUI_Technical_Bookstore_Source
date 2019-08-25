//
//  VStackView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/08/26.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct VStackView: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Hello")
            Text("World!")
        }
    }
}

struct VStackView_Previews: PreviewProvider {
    static var previews: some View {
        VStackView()
    }
}
