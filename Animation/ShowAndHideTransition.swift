//
//  ShowAndHideTransition.swift
//  Animation
//
//  Created by Peter Molnar on 01/11/2021.
//

import SwiftUI

struct ShowAndHideTransition: View {
    
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            
           if isShowingRed {
               Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
                .transition(.asymmetric(insertion: .scale, removal: .opacity))
           }
        }
    }
}

struct ShowAndHideTransition_Previews: PreviewProvider {
    static var previews: some View {
        ShowAndHideTransition()
    }
}
