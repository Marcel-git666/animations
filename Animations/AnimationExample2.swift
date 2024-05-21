//
//  AnimationExample2.swift
//  Animations
//
//  Created by Marcel Mravec on 20.05.2024.
//

import SwiftUI

struct AnimationExample2: View {
    @State private var sides: Int = 4
    @State private var duration: Double = 1.0
    private var sidesBinding: Binding<Double> {
        Binding<Double>(
            get: { Double(self.sides) },
            set: { self.sides = Int($0) }
        )
    }
    
    var body: some View {
        VStack {
            PolygonShape2(sides: sides)
                .stroke(Color.red, lineWidth: 3)
                .padding(20)
                .animation(.easeInOut(duration: duration), value: sides)
                .layoutPriority(1)
            
            Text("\(Int(sides)) sides").font(.headline)
            Slider(value: sidesBinding, in: 1...10, step: 1)
            HStack(spacing: 20) {
                MyButton(label: "1") {
                    self.sides = 1
                }
                
                MyButton(label: "3") {
                    self.sides = 3
                }
                
                MyButton(label: "7") {
                    self.sides = 7
                }
                
                MyButton(label: "30") {
                    self.sides = 30
                }
                
            }.navigationBarTitle("Example 2").padding(.bottom, 50)
        }
    }
}
