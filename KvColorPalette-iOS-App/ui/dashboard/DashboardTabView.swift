//
//  MainTabView.swift
//  KV Color Palette
//
//  Created by Kavimal Wijewardana on 12/27/24.
//

import SwiftUI

struct DashboardTabView: View {
    var body: some View {
        TabView {
            ColorPaletteTab()
                .tabItem {
                    Label("Color Palette", systemImage: "square.grid.3x3")
                }
            ThemeColorGenTab()
                .tabItem {
                    Label("Theme Gen", systemImage: "theatermask.and.paintbrush")
                }
            SettingsTab()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.2.fill")
                }
        }
    }
}

#Preview {
    DashboardTabView()
}
