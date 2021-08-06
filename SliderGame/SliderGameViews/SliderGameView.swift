//
//  SliderGameView.swift
//  SliderGame
//
//  Created by Иван Маришин on 06.08.2021.
//

import SwiftUI

struct SliderGameView: View {
    @ObservedObject var gameManager: GameManager
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        VStack(alignment: .center) {
            TextSliderView(name: $user.name, value: $gameManager.value)
            Spacer()
            SliderView(gameManager: gameManager, redOpacity: $gameManager.sliderValue)
            Spacer()
            ButtonSliderView(gameManager: gameManager, cleanAction: user.clear)
        }
        .padding()
    }
}

struct SliderGameView_Previews: PreviewProvider {
    static var previews: some View {
        SliderGameView(gameManager: GameManager()).environmentObject(UserManager())
    }
}
