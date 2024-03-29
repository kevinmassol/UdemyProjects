//
//  ContactView.swift
//  UdemyProjects
//
//  Created by KEVIN on 21/02/2024.
//

import SwiftUI

struct ContactView: View {
    
    @State var buttonClicked = false
    
    var body: some View {
        VStack {
            Text("Ou me trouver ?")
                .font(.title)
                .foregroundStyle(.indigo)
                .fontWeight(.bold)
            Image(.caveOutside)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Button("Dans la cave des merveilles") {
                buttonClicked.toggle()
            }
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $buttonClicked, content: {
                VStack {
                    Text("Bien au chaud à l'intérieur de la lampe")
                        .foregroundStyle(.mint)
                        .fontWeight(.bold)
                    Image(.dansLampe)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            })
            Image(.caveInside)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: .mint, radius: 2, x: 3, y: 3)
                .padding()
            Spacer()
            Text("Attention !! \nVous ne pouvez prendre QUE la lampe dans cette cave aux merveilles !")
                .font(.caption)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .italic()
        }
    }
}

#Preview {
    ContactView()
}
