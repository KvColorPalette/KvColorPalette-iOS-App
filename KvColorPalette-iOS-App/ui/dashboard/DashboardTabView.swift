//
//  MainTabView.swift
//  KV Color Palette
//
//  Created by Kavimal Wijewardana on 12/27/24.
//

import SwiftUI
import KvColorPalette_iOS

struct DashboardTabView: View {
    
    @State var viewRefreshId: UUID = UUID()
    @State private var selectedColor = Color.white
    
    var body: some View {
        ZStack {
            AppBackground()
                .id(viewRefreshId)
            
            VStack {
                TabView {
                    ColorPaletteTab()
                        .id(viewRefreshId)
                        .tabItem {
                            Label("Color Palette", systemImage: "square.grid.3x3")
                        }
                    ThemeColorGenTab()
                        .id(viewRefreshId)
                        .tabItem {
                            Label("Theme Gen", systemImage: "theatermask.and.paintbrush")
                        }
                    SettingsTab(onChangeTheme: {
                        viewRefreshId = UUID()
                    })
                    .tabItem {
                        Label("Settings", systemImage: "gearshape.2.fill")
                    }
                }
            }
        }
    }
}

#Preview {
    DashboardTabView()
}
