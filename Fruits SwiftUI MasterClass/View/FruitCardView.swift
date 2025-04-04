//
//  FruitCardView.swift
//  Fruits SwiftUI MasterClass
//
//  Created by Aran Fononi on 4/4/25.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 20) {
            // Fruit Image
            Image("blueberry")
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15),radius: 8, x: 6, y: 8)
            // Fruit Title
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            // Fruit Headline
            
            // Fruit Start
            
        } //: VStack
    }
}

// MARK: - Preview

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
