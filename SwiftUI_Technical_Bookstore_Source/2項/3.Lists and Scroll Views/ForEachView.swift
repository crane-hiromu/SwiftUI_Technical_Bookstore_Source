//
//  ForEachView.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/08/26.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

struct ForEachView: View {
    
    var body: some View {
        ForEach(Range(0...10)) { row in
            Text("row: \(row)")
        }
    }
}

struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView()
    }
}
