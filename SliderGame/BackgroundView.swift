//
//  BackgroundView.swift
//  HellowApp
//
//  Created by Иван Маришин on 03.08.2021.
//

import SwiftUI

struct BackgroundView: View {
    @State private var brandGradient: Gradient = Gradient(colors: [Color(.systemBlue), Color(.systemRed), Color(.systemPurple), Color(.systemPink), Color(.systemYellow), Color(.systemGreen), Color(.systemOrange)])
    @State private var start = UnitPoint(x: 0, y: -2)
    @State private var end = UnitPoint(x: 4, y: 0)
    @State private var animationDuration: Double = 6
    
    private let timer = Timer.publish(every: 1, on: .main, in: .default).autoconnect()
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: brandGradient, startPoint: start, endPoint: end)
                .animation(.easeInOut(duration: animationDuration).repeatForever())
                .onReceive(timer, perform: { _ in
                    self.start = UnitPoint(x: 4, y: 0)
                    self.end = UnitPoint(x: 0, y: 2)
                    self.start = UnitPoint(x: -4, y: 20)
                    self.start = UnitPoint(x: 4, y: 0)
                })
            
            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.5), Color.white.opacity(0.1)]), startPoint: .top, endPoint: .bottom)
        }
        .ignoresSafeArea()
        .blur(radius: 50)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
