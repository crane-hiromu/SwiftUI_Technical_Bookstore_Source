//
//  HStackView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/08/26.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct HStackView: View {
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Text("Hello")
            Text("World!")
        }
    }
}

struct HStackView_Previews: PreviewProvider {
    static var previews: some View {
        HStackView()
    }
}
