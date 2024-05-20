//
//  AnimationExample.swift
//  Animations
//
//  Created by Marcel Mravec on 20.05.2024.
//

import SwiftUI

struct AnimationExample1: View {
    @State private var sides: Double = 4
    
    var body: some View {
        VStack {
            PolygonShape(sides: sides)
                .stroke(Color.blue, lineWidth: 3)
                .padding(20)
                .animation(.easeInOut(duration: 1.0))
                .layoutPriority(1)
            
            Text("\(Int(sides)) sides").font(.headline)
            
            HStack(spacing: 20) {
                MyButton(label: "1") {
                    self.sides = 1.0
                }
                
                MyButton(label: "3") {
                    self.sides = 3.0
                }
                
                MyButton(label: "7") {
                    self.sides = 7.0
                }
                
                MyButton(label: "30") {
                    self.sides = 30.0
                }
                
            }.navigationBarTitle("Example 1").padding(.bottom, 50)
        }
    }
}
