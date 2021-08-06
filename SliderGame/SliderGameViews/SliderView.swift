//
//  SliderView.swift
//  SliderGame
//
//  Created by Иван Маришин on 06.08.2021.
//

import SwiftUI

struct SliderView: View {
    @ObservedObject var gameManager: GameManager
    @Binding var redOpacity: Double
    
    var body: some View {
        HStack {
            Text("0")
                .font(.title3)
            SwiftUICustomSlider(thumbColor: UIColor(.red.opacity(redOpacity/100)), minColor: UIColor.systemTeal, maxColor: UIColor.systemBlue, minValue: 0, maxValue: 100, value: $gameManager.sliderValue)
            Text("100")
                .font(.title3)
        }
        .padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(gameManager: GameManager(), redOpacity: .constant(50))
    }
}
