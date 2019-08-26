//
//  RoundedRectangleShape.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/08/27.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct RoundedRectangleShape: View {
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30, style: .circular)
            .foregroundColor(.orange)
    }
}

struct RoundedRectangleShape_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleShape()
    }
}
