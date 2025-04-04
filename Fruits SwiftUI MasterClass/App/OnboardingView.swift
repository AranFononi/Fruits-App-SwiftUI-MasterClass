//
//  OnboardingView.swift
//  Fruits SwiftUI MasterClass
//
//  Created by Aran Fononi on 4/4/25.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    
    var body: some View {
        TabView {
            ForEach(fruitsData) { fruit in
                FruitCardView(fruit: fruit)
            }
        } //: Tab View
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
