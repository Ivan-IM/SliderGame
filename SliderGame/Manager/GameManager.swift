//
//  GameManager.swift
//  SliderGame
//
//  Created by Иван Маришин on 06.08.2021.
//

import Combine
import Foundation

class GameManager: ObservableObject {
    @Published var value: Int = Int.random(in: 0...100)
    @Published var sliderValue: Double = Double.random(in: 0...100)
    @Published var score: Int = 0
    @Published var result: Int = 0
    @Published var title: String = ""
    
    func counter(_ value: Double) -> Double {
        let sValue = value/sliderValue
        return sValue
    }
    
    func getResult() {
        result = 100 - abs(Int(value) - Int(sliderValue))
    }
    
    func getScore() {
        if result > 95 {
            score += 1
            title = "+1"
        }
        else {
            score -= 1
            title = "-1"
        }
    }
}
