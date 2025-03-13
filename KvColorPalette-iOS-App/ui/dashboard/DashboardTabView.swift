//
//  MainTabView.swift
//  KV Color Palette
//
//  Created by Kavimal Wijewardana on 12/27/24.
//

import SwiftUI

struct DashboardTabView: View {
    
    @Binding var viewRefreshId: UUID
    
    init(viewRefreshId: Binding<UUID>) {
        self._viewRefreshId = viewRefreshId
    }
    
    var body: some View {
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
            SettingsTab(viewRefreshId: $viewRefreshId)
                .id(viewRefreshId)
                .tabItem {
                    Label("Settings", systemImage: "gearshape.2.fill")
                }
        }
    }
}

#Preview {
    @Previewable @State var vid = UUID()
    DashboardTabView(viewRefreshId: $vid)
}
