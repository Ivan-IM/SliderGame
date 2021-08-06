//
//  ContentView.swift
//  SliderGame
//
//  Created by Иван Маришин on 06.08.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var gameManager = GameManager()
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 30) {
            Text("Set the slider correctly")
            Text("\(gameManager.value)")
            SliderView(gameManager: gameManager)
            ButtonView(gameManager: gameManager)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
