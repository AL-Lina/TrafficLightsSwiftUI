//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Alina Sokolova on 15.02.22.
//

import SwiftUI

struct ContentView: View {
    enum Colors {
        case red
        case yellow
        case green
    }
    @State private var currentLight = Colors.red
    @State private var nameButton = "START"
    @State private var lightIsOn = 1.0
    @State private var lightIsOff = 0.5
    @State private var redLightWithOpacity = 0.5
    @State private var yellowLightWithOpacity = 0.5
    @State private var greenLightWithOpacity = 0.5
  
    
    var body: some View {
        ZStack {
                Color.black
                    .ignoresSafeArea()
                VStack {
                    Circles(color: .red).opacity(redLightWithOpacity)
                        .padding(.bottom, 20)
                    Circles(color: .yellow).opacity(yellowLightWithOpacity)
                        .padding(.bottom, 20)
                    Circles(color: .green).opacity(greenLightWithOpacity)
        
            
            
                Spacer()
                
                    Button(action: {
                        nameButton = "NEXT"
                        switch currentLight {
                        case .red:
                            redLightWithOpacity = lightIsOn
                            greenLightWithOpacity = lightIsOff
                            currentLight = .yellow
                        case .yellow:
                            yellowLightWithOpacity = lightIsOn
                            redLightWithOpacity = lightIsOff
                            currentLight = .green
                        case .green:
                            greenLightWithOpacity = lightIsOn
                            yellowLightWithOpacity = lightIsOff
                            currentLight = .red
                        }
                    }, label: {
                        Text(nameButton)
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .frame(width: 200, height: 70)
                            .background(.blue)
                            .cornerRadius(20)
                    })
                  

                .padding()
            }
        
        }
    
   
        }
  
    
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
