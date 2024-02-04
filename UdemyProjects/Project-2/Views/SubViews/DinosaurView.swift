//
//  DinosaurView.swift
//  UdemyProjects
//
//  Created by KEVIN on 04/02/2024.
//

import SwiftUI

struct DinosaurView: View {
    
    @State var action = "Jump"
    @State var currentSprite = 1
    
    func getImage() -> String {
        let base = action
        let end = "(\(currentSprite))"
        return base + " " + end
    }
    
    var body: some View {
        Text("Jurassic Matt")
            .font(.system(size: 50))
            .fontWeight(.ultraLight)
        Image(getImage())
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 250)
            .background(.gray)
            .cornerRadius(25)
    }
}

#Preview {
    DinosaurView()
}
