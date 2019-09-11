//
//  HelloLabelView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/10.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct HelloLabelView: View {
    
    var textLabel: Text = Text("Hello World")
    
    var body: some View {
        textLabel
    }
    
    func updateLabelColor() {
        textLabel.foregroundColor(.red)
    }
}

struct HelloLabelView_Previews: PreviewProvider {
    static var previews: some View {
        HelloLabelView()
    }
}
