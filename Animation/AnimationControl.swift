//
//  AnimationControl.swift
//  Animation
//
//  Created by Peter Molnar on 01/11/2021.
//

import SwiftUI

struct AnimationControl: View {
    
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? Color.blue : Color.red)
        .animation(nil, value: enabled)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
    }
}

struct AnimationControl_Previews: PreviewProvider {
    static var previews: some View {
        AnimationControl()
    }
}
