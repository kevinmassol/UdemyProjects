//
//  RoundedRectangleImage.swift
//  UdemyProjects
//
//  Created by KEVIN on 29/01/2024.
//

import SwiftUI

struct RoundedRectangleImage: View {
    
    let name: String
    
    var body: some View {
        Image(name)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    RoundedRectangleImage(name: "photo_1")
        .previewLayout(.sizeThatFits)
}
