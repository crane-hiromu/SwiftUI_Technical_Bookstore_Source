//
//  RectanglesView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/08/25.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct RectanglesView: View {

    var body: some View {
        VStack(spacing: 0) {
            Rectangle().fill(Color.red)
            Rectangle().fill(Color.green)
        }
        .frame(width: 200, height: 200)
        .border(Color.black)
    }
}

struct RectanglesView_Previews: PreviewProvider {
    static var previews: some View {
        RectanglesView()
    }
}
