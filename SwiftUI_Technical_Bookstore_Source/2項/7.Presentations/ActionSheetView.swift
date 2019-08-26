//
//  ActionSheetView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/08/27.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct ActionSheetView: View {
    
    @State var isShown = false

    var body: some View {
        Button(action: {
            self.isShown = true
        }) {
            Text("Show ActionSheet")
        }.actionSheet(isPresented: $isShown, content: {
            ActionSheet(
                title: Text("Title"),
                message: Text("Message"),
                buttons: [.default(Text("Default")),
                          .destructive(Text("Destructive")),
                          .cancel()]
            )
        })
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
