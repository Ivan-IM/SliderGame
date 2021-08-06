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
    @Published var score: Int = 0
    @Published var result: Int = 0
    
    func counter(_ value: Double) -> Double {
        let sValue = value/sliderValue
        return sValue
    }
    
    func getResult() {
        if Double(value) < sliderValue {
            result = Int((Double(value)/sliderValue)*100)
        }
        else if Double(value) > sliderValue {
            result = Int((sliderValue/Double(value))*100)
        }
        else {
            result = 100
        }
    }
    
    func getScore() {
        if result > 90 {
            score += 1
        }
        else {
            score -= 1
        }
    }
}
