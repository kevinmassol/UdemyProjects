//
//  HeaderView.swift
//  UdemyProjects
//
//  Created by KEVIN on 29/01/2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            Image("bg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 230)
                .clipped()
            HStack(alignment: .bottom, spacing: 80) {
                Text("I 💙 Santorini")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(Color(.greekBlue))
                Image("flag")
                    .resizable()
                    .frame(width: 75, height: 75)
            }
            .frame(height: 55)
            .offset(y: -35)
            Divider()
                .frame(width: 350, height: 2)
                .overlay(Color(.greekBlue))
        }
    }
}

#Preview {
    HeaderView()
}
