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
        ZStack {
            VStack(spacing: 20) {
                
                // Fruit Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15),radius: 8, x: 6, y: 8)
                
                // Fruit Title
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15),radius: 2,x: 2,y: 2)
                
                // Fruit Headline
                Text("Blueberries are sweet, nutritious, and widely fruit all over the world.")
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // Fruit Start
                
                
            } //: VStack
        } //: ZStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(LinearGradient(colors: [.colorBlueberryLight, .colorBlueberryDark], startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        
    }
}

// MARK: - Preview

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
