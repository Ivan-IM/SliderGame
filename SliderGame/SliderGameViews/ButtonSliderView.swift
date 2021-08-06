//
//  ButtonView.swift
//  SliderGame
//
//  Created by Иван Маришин on 06.08.2021.
//

import SwiftUI

struct ButtonSliderView: View {
    @ObservedObject var gameManager: GameManager
    @State private var showingAlert = false
    var cleanAction: () -> Void
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 50) {
            Text("Score \(gameManager.score)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            
            HStack(spacing: 50) {
            Button(action: {
                gameManager.getResult()
                showingAlert.toggle()
            }, label: {
                Text("Check me")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundColor(.black)
            })
            .frame(width: 150, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .cornerRadius(25)
            .overlay(Capsule().stroke(Color(.black), lineWidth: 3))
            .opacity(0.8)
            
            
            
            Button(action: cleanAction, label: {
                Text("Logout")
                    .foregroundColor(.black)
            })
            .frame(width: 100, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .cornerRadius(25)
            .overlay(Capsule().stroke(Color(.black), lineWidth: 1))
            .opacity(0.8)
        }
    }
        .alert(isPresented: $showingAlert, content: {
            Alert(title: Text("Result"), message: Text("Your accuracy \(gameManager.result)%"), dismissButton: .default(Text("OK"), action: {
                gameManager.getScore()
                gameManager.value = Int.random(in: 0...100)
                gameManager.sliderValue = Double.random(in: 0...100)
            }))
        })
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSliderView(gameManager: GameManager(), cleanAction: {})
    }
}
