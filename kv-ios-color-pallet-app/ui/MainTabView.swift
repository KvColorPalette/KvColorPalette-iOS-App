//
//  MainTabView.swift
//  kv-ios-color-pallet-app
//
//  Created by Kavimal Wijewardana on 12/27/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ColorPalletTab()
                .tabItem {
                    Label("Color Pallet", systemImage: "square.grid.3x3")
                }
            ThemeColorGenTab()
                .tabItem {
                    Label("Theme Gen", systemImage: "theatermask.and.paintbrush")
                }
        }
    }
}

#Preview {
    MainTabView()
}
