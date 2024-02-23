//
//  MyTabView.swift
//  UdemyProjects
//
//  Created by KEVIN on 21/02/2024.
//

import SwiftUI

struct MyTabView: View {
    
    @State var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView_3()
                .tabItem {
                    Text("Accueil")
                    Image(systemName: "house.fill")
                }
                .tag(0)
            WishesView()
                .tabItem {
                    Text("Réalisations")
                    Image(systemName: "lamp.desk.fill")
                }
                .tag(1)
            ContactView()
                .tabItem {
                    Text("Contact")
                    Image(systemName: "globe")
                }
                .tag(2)
        }
    }
}

#Preview {
    MyTabView()
}
