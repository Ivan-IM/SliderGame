//
//  File.swift
//  SliderGame
//
//  Created by Иван Маришин on 06.08.2021.
//

import SwiftUI
import Foundation

struct SwiftUICustomSlider: UIViewRepresentable {
    
    final class Coordinator: NSObject {
        var value: Binding<Double>
        
        init(value: Binding<Double>) {
            self.value = value
        }
        
        @objc func valueChanged(_ sender: UISlider) {
            self.value.wrappedValue = Double(sender.value)
        }
    }
    
    var thumbColor: UIColor = .white
    var minColor: UIColor?
    var maxColor: UIColor?
    var minValue: Int
    var maxValue: Int
    
    @Binding var value: Double
    
    func makeUIView(context: Context)  -> UISlider {
        let slider = UISlider(frame: .zero)
        slider.thumbTintColor = thumbColor
        slider.minimumTrackTintColor = minColor
        slider.maximumTrackTintColor = maxColor
        slider.value = Float(value)
        slider.minimumValue = Float(minValue)
        slider.maximumValue = Float(maxValue)
        
        slider.addTarget(context.coordinator, action: #selector(Coordinator.valueChanged(_:)), for: .valueChanged)
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(self.value)
    }
    
    func makeCoordinator() -> SwiftUICustomSlider.Coordinator {
        Coordinator(value: $value)
    }
}
