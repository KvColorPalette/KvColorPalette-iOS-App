//
//  UIUtil.swift
//  KvColorPalette-App
//
//  Created by Kavimal Wijewardana on 6/30/25.
//
import Foundation
import SwiftUI

public class UIUtil {
    
    public static func getScreenType() -> ScreenType {
        let size = UIScreen.main.bounds.size
        
        if size.height <= 667 {
            return ScreenType.MINI_SCREEN
        } else if size.height <= 852 {
            return ScreenType.AVERAGE_SCREEN
        } else if size.height <= 874 {
            return ScreenType.PRO_SCREEN
        } else if size.height <= 932 {
            return ScreenType.PLUS_SCREEN
        } else if size.height <= 956 {
            return ScreenType.MAX_SCREEN
        } else {
            return ScreenType.AVERAGE_SCREEN
        }
    }
}
