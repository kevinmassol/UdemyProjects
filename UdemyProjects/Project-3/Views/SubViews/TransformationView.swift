//
//  TransformationView.swift
//  UdemyProjects
//
//  Created by KEVIN on 29/03/2024.
//

import SwiftUI

struct TransformationView: View {
    
    @Binding var transformed: Bool
    
    var falseValue: String
    var trueValue: String
    
    var body: some View {
        Button(action: {
            transformed.toggle()
        }, label: {
            Image(transformed ? trueValue : falseValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
        })
    }
}

#Preview {
    TransformationView(
        transformed: .constant(false),
        falseValue: "aladdin",
        trueValue: "ali")
}
