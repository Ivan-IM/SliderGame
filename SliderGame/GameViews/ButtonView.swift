//
//  ButtonView.swift
//  SliderGame
//
//  Created by Иван Маришин on 06.08.2021.
//

import SwiftUI

struct ButtonView: View {
    @ObservedObject var gameManager: GameManager
    
    var body: some View {
        VStack {
            Button(action: {
                
            }, label: {
                Text("Check ME")
            })
            Button(action: {
                gameManager.value = Int.random(in: 0...100)
                gameManager.sliderValue = Double.random(in: 0...100)
            }, label: {
                Text("Reset")
            })
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(gameManager: GameManager())
    }
}
