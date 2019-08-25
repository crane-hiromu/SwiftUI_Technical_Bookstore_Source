//
//  FormView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/08/26.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct FormView: View {
    
    var body: some View {
        Form {
            Section(header: Text("フォーム").font(.title)) {
                Text("Form Text").font(.title)
                Text("Form Text").font(.title)
            }
            Divider()
            Section {
                Button(action: {
                    /* do something */
                }) {
                    Text("Form Button")
                }
            }
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
