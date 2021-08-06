//
//  TextSliderView.swift
//  SliderGame
//
//  Created by Иван Маришин on 06.08.2021.
//

import SwiftUI

struct TextSliderView: View {
    @Binding var name: String
    @Binding var value: Int
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 70) {
            Text("Hello, \(name)!")
                .font(.largeTitle)
                .opacity(0.8)
            
            VStack {
                Text("Set the slider correctly")
                    .multilineTextAlignment(.center)
                    .opacity(0.8)
                HStack {
                    Image(systemName: "chevron.right.circle")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text("\(value)")
                        .font(.largeTitle)
                        .opacity(0.8)
                    Image(systemName: "chevron.left.circle")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}

struct TextSliderView_Previews: PreviewProvider {
    static var previews: some View {
        TextSliderView(name: .constant("User"), value: .constant(50))
    }
}
