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
    
    var body: some View {
        Button(buttonTitle) {
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
    ActionButtonView(buttonTitle: "Cours", action: .constant("Run"))
}
