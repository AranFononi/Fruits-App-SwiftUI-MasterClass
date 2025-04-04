//
//  SettingsView.swift
//  Fruits SwiftUI MasterClass
//
//  Created by Aran Fononi on 4/4/25.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    
                    GroupBox(label: SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 9))
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                        
                    }//: Group
                    
                    
                    // MARK: - Section 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased()).foregroundStyle(.green)
                            } else {
                                Text("Restart".uppercased()).foregroundStyle(.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                            
                    }
                    
                    // MARK: - Section 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        
                        SettingsRowView(name: "Developer", content: "Aran Fononi")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS +15")
                        SettingsRowView(name: "Github", linkLabel: "Aran Apps", linkDestination: "github.com/AranFononi")
                        SettingsRowView(name: "Linkedin", linkLabel: "Aran Fononi", linkDestination: "www.linkedin.com/in/aran-fononi-18182b265")
                        SettingsRowView(name: "Course", content: "Udemy SwiftUI Masterclass")
                        SettingsRowView(name: "Version", content: "1.0.0")
                    }
                    
                } //: VStack
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }

                    }
                }
                .padding()
            } //: Scroll
           
        } //: Navigation
        
    }
}

#Preview {
    SettingsView()
}
