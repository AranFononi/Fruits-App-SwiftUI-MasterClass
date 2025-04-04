//
//  SettingsRowView.swift
//  Fruits SwiftUI MasterClass
//
//  Created by Aran Fononi on 4/4/25.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name).foregroundStyle(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                }
                else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundStyle(.teal)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    SettingsRowView(name: "Developer", content: "Aran Fononi")
        .padding()
}
