//
//  GameManager.swift
//  SliderGame
//
//  Created by Иван Маришин on 06.08.2021.
//

import Combine

class GameManager: ObservableObject {
    @Published var value: Int = Int.random(in: 0...100)
    @Published var sliderValue: Double = Double.random(in: 0...100)
    
}
