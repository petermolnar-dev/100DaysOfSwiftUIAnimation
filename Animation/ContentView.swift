//
//  ContentView.swift
//  Animation
//
//  Created by Peter Molnar on 27/10/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        print(animationAmount)
        return VStack {
            Stepper("Scale Amount", value: $animationAmount.animation(
                Animation.easeInOut(duration: 1)
                    .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            
            Spacer()
            
            Button("Tap me") {
                self.animationAmount += 1
            }
            .padding(40)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
            //.animation(.interpolatingSpring(stiffness: 50, damping: 1))
            //        .animation(
            //            Animation.easeInOut(duration: 1)
            //                .repeatForever(autoreverses: true)
            //        )
            //.blur(radius: (animationAmount - 1) * 3)
            //        .overlay(
            //            Circle()
            //                .stroke(Color.red)
            //                .scaleEffect(animationAmount)
            //                .opacity(Double(2-animationAmount))
            //                .animation(
            //                    Animation.easeOut(duration: 1)
            //                        .repeatForever(autoreverses: false)
            //                )
            //        )
            //        .onAppear {
            //            self.animationAmount = 2
            //        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
