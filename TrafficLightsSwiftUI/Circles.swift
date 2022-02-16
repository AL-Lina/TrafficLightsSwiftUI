//
//  Circle.swift
//  TrafficLightsSwiftUI
//
//  Created by Alina Sokolova on 15.02.22.
//

import SwiftUI

struct Circles: View {
    
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        Circles(color: .red)
    }
}
