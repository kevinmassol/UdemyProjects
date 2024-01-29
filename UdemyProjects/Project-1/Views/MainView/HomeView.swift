//
//  HomeView.swift
//  UdemyProjects
//
//  Created by KEVIN on 29/01/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HeaderView()
            BodyView()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    HomeView()
}
