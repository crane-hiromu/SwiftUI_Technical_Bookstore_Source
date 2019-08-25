//
//  ViewBuilder.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/08/25.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

/* VStackのコード例 */

struct VStack_1: View {
    
    var body: some View {
        VStack {
            Text("hoge")
            Text("huga")
        }
    }
}


/* VStackの省略しない書き方 */

struct VStack_2: View {
    
    var body: some View {
        VStack.init(content: {
            Text("hoge")
            Text("huga")
        })
    }
}


/* ViewBuilderを使ったカスタムビュー */

struct CustomView: View {
    
    var body: some View {
        CustomBuilderView {
            Text("CustomView")
        }
    }
}

struct CustomBuilderView<Content: View>: View {
    
    let builder: () -> Content
    
    var body: AnyView {
        return AnyView(builder())
    }

    init(@ViewBuilder builder: @escaping () -> Content) {
        self.builder = builder
    }
}

struct ViewBuilder_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomView()
        }
    }
}
