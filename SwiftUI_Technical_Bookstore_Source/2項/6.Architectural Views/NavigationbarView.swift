//
//  NavigationbarView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/01.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct NavigationbarView: View {
    
    var body: some View {
        NavigationView {
            List {
                Text("List 1")
                Text("List 2")
                Text("List 3")
            }
            .navigationBarItems(trailing:
                Button(action: {
                    // do something
                }, label: {
                    Text("Item")
                })
            )
            .navigationBarTitle(Text("Navigation Title"))
        }
    }
}

struct NavigationbarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationbarView()
    }
}
