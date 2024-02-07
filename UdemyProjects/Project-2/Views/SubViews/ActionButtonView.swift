//
//  ActionButtonView.swift
//  UdemyProjects
//
//  Created by KEVIN on 04/02/2024.
//

import SwiftUI

struct ActionButtonView: View {
    
    var buttonTitle: String
    @Binding var action: String
    @Binding var currentSprite: Int
    
    var body: some View {
        Button(buttonTitle) {
            currentSprite = 1
            switch buttonTitle {
            case "Cours": action = "Run"
            case "Saute": action = "Jump"
            case "GameOver": action = "Dead"
            default: break
            }
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    ActionButtonView(buttonTitle: "Cours", action: .constant("Run"), currentSprite: .constant(1))
}
