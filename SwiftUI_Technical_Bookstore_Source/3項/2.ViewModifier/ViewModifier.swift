//
//  ViewModifier.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/08/25.
//  Copyright © 2019 h.crane. All rights reserved.
//

import SwiftUI

/* Modifierの例 */

struct ModifierView: View {
    
    var body: some View {
        Text("ViewModifier")
            .foregroundColor(.red)
    }
}


/* Modifier Chainの例 */

struct ModifierChainView: View {
    
    var body: some View {
        Text("ViewModifier")
            .foregroundColor(.red)
            .fontWeight(.medium)
            .underline(true, color: .blue)
    }
}


/* CustomModifierの例 */

struct CustomTextModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(.green)
            .blur(radius: 0.2)
            .shadow(color: .orange, radius: 5, x: 1, y: 1)
        
    }
}

struct CustomTextModifierView: View {
    
    var body: some View {
        Text("ViewModifier")
            .modifier(CustomTextModifier())
    }
}

struct ViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextModifierView()
    }
}
