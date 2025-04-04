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
            ForEach(0..<5) { item in
                FruitCardView()
            }
        } //: Tab View
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
