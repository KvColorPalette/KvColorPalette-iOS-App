//
//  SettingsTab.swift
//  KvColorPalette-App
//
//  Created by Kavimal Wijewardana on 3/12/25.
//

import SwiftUI

struct SettingsTab: View {
    var body: some View {
        ZStack {
            AppBackground()
            
            VStack {
                HeadingTitleView(titleText: "Settings")
                
                VStack {
                    Button(action: {
                        
                    }) {
                        HStack {
                            Text("Current Theme")
                                .foregroundColor(Color.themePalette.onPrimary)
                                .padding()
                            Spacer()
                            
                            RoundedRectangle(cornerRadius: 5)
                                .fill(.blue)
                                .frame(width: 30, height: 30)
                                //.border(Color.black, width: 1)
                                .padding([.top, .bottom])
                                .padding([.trailing], 5)
                            
                            Image(systemName: "chevron.right")
                                .padding([.top, .bottom, .trailing])
                                
                        }
                        .background(Color.themePalette.tertiary)
                        .cornerRadius(12)
                        .overlay( /// apply a rounded border
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.themePalette.primary, lineWidth: 1)
                        )
                    }
                }
                .padding([.top], 12)
                .padding([.leading, .trailing], 20)
                
                Spacer()
            }
        }
    }
}

#Preview {
    SettingsTab()
}
