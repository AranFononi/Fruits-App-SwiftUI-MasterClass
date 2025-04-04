//
//  FruitDetailView.swift
//  Fruits SwiftUI MasterClass
//
//  Created by Aran Fononi on 4/4/25.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - Properties
    var fruit: Fruit
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center,spacing: 20) {
                    // MARK: - Header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading,spacing: 20) {
                        // MARK: - Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        
                        // MARK: - Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // MARK: - Nutrients
                        FruitNutrientsView(fruit: fruit)
                        // MARK: - Subheading
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(fruit.gradientColors[1])
                        // MARK: - Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        // MARK: - Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 30)
                    } //: VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VStack
                .navigationBarTitle(fruit.title, displayMode : .inline)
                .navigationBarHidden(true)
                
            }
            .edgesIgnoringSafeArea(.top)
        } //: Navigation View
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
