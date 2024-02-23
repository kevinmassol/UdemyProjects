//
//  HomeView-3.swift
//  UdemyProjects
//
//  Created by KEVIN on 16/02/2024.
//

import SwiftUI

struct HomeView_3: View {
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Image(.cover)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 250)
                Image(.profile)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 125, height: 125)
                    .background(.white)
                    .clipShape(Circle())
            }
            Text("L'app du génie")
                .font(.title)
                .foregroundStyle(.indigo)
                .fontWeight(.bold)
            Divider()
                .frame(height: 2)
                .background(.indigo)
                .padding(EdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 18))
            Text("Venez me frotter la lampe pour obtenir vos 3 voeux, et ainsi venir réaliser vos rêves les plus fous !")
                .italic()
                .foregroundStyle(.indigo)
                .multilineTextAlignment(.center)
                .padding()
            Image(.lamp)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(25)
                .padding()
                .clipped()
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    HomeView_3()
}
