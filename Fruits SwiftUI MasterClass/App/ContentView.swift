//
//  ContentView.swift
//  Fruits SwiftUI MasterClass
//
//  Created by Aran Fononi on 4/4/25.
//

import SwiftUI

struct ContentView: View {

    var fruits: [Fruit] = fruitsData
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 6)
                }
            } //: List
            .navigationTitle("Fruits")
        } //: Navigation View
    }
}

#Preview {
    ContentView()
}
