//
//  FlameEffectModifier.swift
//  Animations
//
//  Created by Marcel Mravec on 20.05.2024.
//

import SwiftUI

struct ParticleMotion: GeometryEffect {
    var time: Double
    let v0: Double = Double.random(in: 40...80) // initial speed
    let alpha: Double = Double.random(in: 0..<2 * Double.pi) // throw angle
    let gravity: Double = 9.81 // gravity
    
    var animatableData: Double {
        get { time }
        set { time = newValue }
    }
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        let dx = v0 * time * cos(alpha)
        let dy = v0 * sin(alpha) * time - 0.5 * gravity * time * time
        
        let affineTransform = CGAffineTransform(translationX: CGFloat(dx), y: CGFloat(-dy))
        return ProjectionTransform(affineTransform)
    }
}

struct FlameEffectModifier: ViewModifier {
    let count: Int
    let duration: Double = 2.0
    
    @State var time: Double = 0.0
    
    func body(content: Content) -> some View {
        let animation = Animation.linear(duration: duration)
            .repeatForever(autoreverses: false)
        return ZStack {
            ForEach (0..<count) { index in
                content
                    .hueRotation(Angle(radians: 0.5 - 3 * (self.time) / duration))
                    .scaleEffect(CGFloat((duration - self.time) / duration))
                    .modifier(ParticleMotion(time: self.time))
                    .opacity((duration - self.time) / duration)
                    .animation(animation.delay(Double.random(in: 0..<self.duration)))
                    .blendMode(.plusLighter)
            }
            .onAppear {
                withAnimation {
                    self.time = duration
                }
            }
        }
    }
}
