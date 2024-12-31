//
//  PalletPage.swift
//  kv-ios-color-pallet-app
//
//  Created by Kavimal Wijewardana on 12/30/24.
//
import Foundation

enum PageType {
    case ALPHA_PAGE, PALLET_PAGE
}

public struct PalletPage: Identifiable, Equatable {
    public let id = UUID()
    var name: String
    var type: PageType
    var tag: Int
    
    public static var samplePage = PalletPage(name: "Sample", type: .ALPHA_PAGE, tag: 0)
    
    public static var palletPages: [PalletPage] = [
        PalletPage(name: "Alpha Pallet", type: PageType.ALPHA_PAGE, tag: 0),
        PalletPage(name: "Color Pallet", type: PageType.PALLET_PAGE, tag: 1)
    ]
}
