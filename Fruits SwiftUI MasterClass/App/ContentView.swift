//
//  ContentView.swift
//  Fruits SwiftUI MasterClass
//
//  Created by Aran Fononi on 4/4/25.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?

    var body: some View {
        VStack {
            Button {
                isOnboarding = true
            } label: {
                Text("Back")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
