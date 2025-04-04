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
                    
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 6)
                    } //: Navigation Link
                }
            } //: List
            .navigationTitle("Fruits")
        } //: Navigation View
    }
}

#Preview {
    ContentView()
}
