//
//  FooterView.swift
//  UdemyProjects
//
//  Created by KEVIN on 29/01/2024.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        HStack {
            Label("Je partage", systemImage: "square.and.arrow.up")
        }
        .frame(height: 30)
        .foregroundStyle(Color(.greekBlue))
    }
}

#Preview {
    FooterView()
}
