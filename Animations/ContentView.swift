//
//  ContentView.swift
//  Animations
//
//  Created by Marcel Mravec on 20.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Part 1: Path Animations")) {
                    NavigationLink(destination: AnimationExample1(), label: {
                        Text("Example 1 (sides: Double)")
                    })
                    
                    NavigationLink(destination: AnimationExample1(), label: {
                        Text("Example 2 (sides: Int)")
                    })
                    
                    NavigationLink(destination: AnimationExample1(), label: {
                        Text("Example 3 (sides & scale)")
                    })
                    
                    NavigationLink(destination: AnimationExample1(), label: {
                        Text("Example 4 (vertex to vertex)")
                    })
                    
                    NavigationLink(destination: AnimationExample1(), label: {
                        Text("Example 5 (clock)")
                    })
                    
                    NavigationLink(destination: AnimationExample1(), label: {
                        Text("Example 6 (metal)")
                    })
                }
                
                Section(header: Text("Part 2: Geometry Effect")) {
                    NavigationLink(destination: AnimationExample1(), label: {
                        Text("Example 7 (skew)")
                    })
                    
                    NavigationLink(destination: AnimationExample1(), label: {
                        Text("Example 8 (rotating card)")
                    })
                    
                    NavigationLink(destination: AnimationExample1(), label: {
                        Text("Example 9 (follow path)")
                    })
                }
                
                Section(header: Text("Part 3: Animatable Modifier")) {
                    NavigationLink(destination: AnimationExample1(), label: {
                        Text("Example 10 (progress indicator)")
                    })
                    
                    NavigationLink(destination: AnimationExample1(), label: {
                        Text("Example 11 (gradient)")
                    })
                    
                    NavigationLink(destination: AnimationExample1(), label: {
                        Text("Example 12 (wave text)")
                    })
                    
                    NavigationLink(destination: AnimationExample1(), label: {
                        Text("Example 13 (counter)")
                    })
                    
                    NavigationLink(destination: AnimationExample1(), label: {
                        Text("Example 14 (animatable text color)")
                    })
                    
                }
                
            }.navigationBarTitle("SwiftUI Lab")
        }
    }
}
#Preview {
    ContentView()
}
