//
//  PalettePage.swift
//  KV Color Palette
//
//  Created by Kavimal Wijewardana on 12/30/24.
//
import Foundation

enum PageType {
    case ALPHA_PAGE, PALLET_PAGE, BRIGHTNESS_PAGE, SATURATION_PAGE
}

public struct PalettePage: Identifiable, Equatable {
    public let id = UUID()
    var name: String
    var type: PageType
    var tag: Int
    
    public static var samplePage = PalettePage(name: "Sample", type: .ALPHA_PAGE, tag: 0)
    
    public static var palletPages: [PalettePage] = [
        PalettePage(name: "Alpha Palette", type: PageType.ALPHA_PAGE, tag: 0),
        PalettePage(name: "Color Palette", type: PageType.PALLET_PAGE, tag: 1),
        PalettePage(name: "Brightness Palette", type: PageType.BRIGHTNESS_PAGE, tag: 2),
        PalettePage(name: "Saturation Palette", type: PageType.SATURATION_PAGE, tag: 3)
    ]
}
