//
//  ContentView.swift
//  SliderGame
//
//  Created by Иван Маришин on 06.08.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var gameManager = GameManager()
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        ZStack {
            //BackgroundView()
            if user.showRegistrationView {
                RegistrationView()
            }
            else {
                SliderGameView(gameManager: gameManager)
            }
        }
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserManager())
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil,
            from: nil,
            for: nil
        )
    }
}
