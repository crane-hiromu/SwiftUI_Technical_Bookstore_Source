//
//  RepresentableView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/05.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct RepresentableView: View {
    
    var body: some View {
        InnerView().frame(width: 200, height: 200)
    }
}

struct InnerView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        // update view
    }
}

struct RepresentableView_Previews: PreviewProvider {
    static var previews: some View {
        RepresentableView()
    }
}
