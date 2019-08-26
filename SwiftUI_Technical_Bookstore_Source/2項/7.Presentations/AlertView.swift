//
//  AlertView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/08/27.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct AlertView: View {
    
    @State var isShown = false

    var body: some View {
        Button(action: {
            self.isShown = true
        }) {
            Text("Show Alert")
        }.alert(isPresented: $isShown, content: {
            Alert(title: Text("Alert"))
        })
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
