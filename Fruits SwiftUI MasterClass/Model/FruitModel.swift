//
//  FruitModel.swift
//  Fruits SwiftUI MasterClass
//
//  Created by Aran Fononi on 4/4/25.
//

import SwiftUI

// MARK: - Fruits Data Model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
