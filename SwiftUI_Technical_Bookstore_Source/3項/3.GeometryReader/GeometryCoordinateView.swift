//
//  GeometryCoordinateView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/08/25.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct GeometryCoordinateView: View {

    var body: some View {
        VStack(spacing: 0) {
            Rectangle().fill(Color.red)

            GeometryReader { geometry in
                Rectangle()
                    .path(in: CGRect(x: 0,
                                     y: geometry.frame(in: .named("GeometryCoordinateView")).origin.y,
                                     width: geometry.size.width/3,
                                     height: geometry.size.height/3))
                    .fill(Color.green)
            }
        }
        .frame(width: 200, height: 200)
        .border(Color.black)
        .coordinateSpace(name: "GeometryCoordinateView")
    }
}

struct GeometryCoordinateView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryCoordinateView()
    }
}
