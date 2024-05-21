//
//  ScaleImplicitAnimation.swift
//  Animations
//
//  Created by Marcel Mravec on 20.05.2024.
//

import SwiftUI

struct Example1: View {
    @State private var half = false
    @State private var dim = false
    
    var body: some View {
        Image("tower")
            .resizable()
            .frame(width: 200, height: 400)
            .scaleEffect(half ? 0.5 : 1.0)
            .opacity(dim ? 0.2 : 1.0)
            .animation(.easeInOut(duration: 1.0), value: half)
            .animation(.easeInOut(duration: 1.0), value: dim)
            .onTapGesture {
                self.dim.toggle()
                self.half.toggle()
            }
    }
}

struct Example2: View {
    @State private var half = false
    @State private var dim = false
    
    var body: some View {
        Image("tower")
            .scaleEffect(half ? 0.5 : 1.0)
            .opacity(dim ? 0.5 : 1.0)
            .onTapGesture {
                self.half.toggle()
                
                withAnimation(.easeInOut(duration: 1.0)) {
                    self.dim.toggle()
                }
        }
    }
}
