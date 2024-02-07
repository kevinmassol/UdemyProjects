//
//  HomeView-2.swift
//  UdemyProjects
//
//  Created by KEVIN on 30/01/2024.
//

import SwiftUI

struct HomeView_2: View {
    
    var jumpCount = 12
    var runCount = 8
    var deadCount = 8

    @State var action = "Jump"
    @State var currentSprite = 1
    
    func getImage() -> String {
        let base = action
        let end = "(\(currentSprite))"
        return base + " " + end
    }
    
    func updateSprite() {
        if action == "Jump" {
            if currentSprite == jumpCount {
                currentSprite = 1
            } else {
                currentSprite += 1
            }
        } else {
            if currentSprite == runCount {
                currentSprite = 1
            } else {
                currentSprite += 1
            }
        }
    }

    var body: some View {
        VStack {
            Text("Jurassic Matt")
                .font(.system(size: 50))
                .fontWeight(.ultraLight)
            Image(getImage())
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 250)
                .background(.gray)
                .cornerRadius(25)
            Spacer()
            Button(action: {
                updateSprite()
            }, label: {
                Image(systemName: "play.circle.fill")
                    .font(.system(size: 45))
            })
            HStack(spacing: 40) {
                ActionButtonView(buttonTitle: "Cours", action: $action, currentSprite: $currentSprite)
                ActionButtonView(buttonTitle: "Saute", action: $action, currentSprite: $currentSprite)
                ActionButtonView(buttonTitle: "GameOver", action: $action, currentSprite: $currentSprite)
            }
            .padding()
        }
    }
}

#Preview {
    HomeView_2()
}
