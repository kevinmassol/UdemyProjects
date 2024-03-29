//
//  WishesView.swift
//  UdemyProjects
//
//  Created by KEVIN on 21/02/2024.
//

import SwiftUI

struct WishesView: View {
    
    @State var aladin = false
    @State var abu = false
    @State var jafar = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("Préparez vous à rester bouche bée. \nMes réalisations sont plus folles les unes que les autres !")
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.indigo)
                    Image(.genie)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Divider()
                    NavigationLink {
                        TransformationView(transformed: $aladin, falseValue: "aladdin", trueValue: "ali")
                    } label: {
                        HStack {
                            Image(.aladdin)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            Text("Voulez-vous voir le fabuleux makeover de notre cher Aladin ?")
                                .foregroundStyle(.indigo)
                        }
                    }
                    NavigationLink {
                        TransformationView(transformed: $jafar, falseValue: "jafar", trueValue: "jafar_snake")
                    } label: {
                        VStack {
                            Text("Quelle était la mauvaise idée de Jafar ?")
                                .foregroundStyle(.indigo)
                            Image(.jafar)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 125, height: 125)
                                .clipShape(Circle())
                        }
                        .padding()
                        .background(.mint)
                        .clipShape(RoundedRectangle(cornerRadius: 17))
                    }
                    NavigationLink("Et Abu dans tout ça ?? ") {
                        TransformationView(transformed: $abu, falseValue: "abu_monkey", trueValue: "abu_elephant")
                    }
                    .foregroundStyle(.indigo)
                }
                Image(.applause)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Alors c'est qui l'artiste ?")
                    .foregroundStyle(.indigo)
            }
            .navigationTitle("Réalisations")
        }
    }
}

#Preview {
    WishesView()
}
