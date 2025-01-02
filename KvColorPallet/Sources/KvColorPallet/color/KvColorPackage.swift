//
//  KvColorPackage.swift
//  kv-ios-color-pallet
//
//  Created by Kavimal Wijewardana on 12/27/24.
//
import Foundation
import SwiftUICore

public enum ColorPackageType {
    case PK_0, PK_50, PK_100, PK_200, PK_300, PK_400, PK_500, PK_600, PK_700
}

/**
 * Material colors 500
 */
public class MatPackage: ColorPackageBase {
    
    public override init() {}
    
    public let matWhite = KvColor(colorName: "MatWhite", colorPackage: ColorPackageType.PK_500, color: Color("mat.white", bundle: .module))
    public let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_500, color: Color("mat.red", bundle: .module))
    public let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_500, color: Color("mat.rose", bundle: .module))
    public let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_500, color: Color("mat.purple.light", bundle: .module))
    public let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_500, color: Color("mat.purple.dark", bundle: .module))
    public let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_500, color: Color("mat.blue.dark", bundle: .module))
    public let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_500, color: Color("mat.blue.light", bundle: .module))
    public let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_500, color: Color("mat.blue.lighter", bundle: .module))
    public let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_500, color: Color("mat.cyan.light", bundle: .module))
    public let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_500, color: Color("mat.cyan.dark", bundle: .module))
    public let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_500, color: Color("mat.green.dark", bundle: .module))
    public let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_500, color: Color("mat.green.light", bundle: .module))
    public let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_500, color: Color("mat.green.lighter", bundle: .module))
    public let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_500, color: Color("mat.yellow", bundle: .module))
    public let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_500, color: Color("mat.gold", bundle: .module))
    public let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_500, color: Color("mat.orange", bundle: .module))
    public let matBlack = KvColor(colorName: "MatWhite", colorPackage: ColorPackageType.PK_500, color: Color("mat.black", bundle: .module))
    
    public override func getColorList() -> [KvColor] {
        return [
            matRed,
            matRose,
            matLPurple,
            matDPurple,
            matDBlue,
            matLBlue,
            matLLBlue,
            matLCyan,
            matDCyan,
            matDGreen,
            matLGreen,
            matLLGreen,
            matYellow,
            matGold,
            matOrange,
        ]
    }
}

/**
 * Material colors 700
 * This is for internal usage only.
 */
class Mat700Package: ColorPackageBase {
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_700, color: Color("mat.700.red", bundle: .module))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_700, color: Color("mat.700.rose", bundle: .module))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_700, color: Color("mat.700.purple.light", bundle: .module))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_700, color: Color("mat.700.purple.dark", bundle: .module))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_700, color: Color("mat.700.blue.dark", bundle: .module))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_700, color: Color("mat.700.blue.light", bundle: .module))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_700, color: Color("mat.700.blue.lighter", bundle: .module))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_700, color: Color("mat.700.cyan.light", bundle: .module))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_700, color: Color("mat.700.cyan.dark", bundle: .module))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_700, color: Color("mat.700.green.dark", bundle: .module))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_700, color: Color("mat.700.green.light", bundle: .module))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_700, color: Color("mat.700.green.lighter", bundle: .module))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_700, color: Color("mat.700.yellow", bundle: .module))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_700, color: Color("mat.700.gold", bundle: .module))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_700, color: Color("mat.700.orange", bundle: .module))
    
    public override func getColorList() -> [KvColor] {
        return [
            matRed,
            matRose,
            matLPurple,
            matDPurple,
            matDBlue,
            matLBlue,
            matLLBlue,
            matLCyan,
            matDCyan,
            matDGreen,
            matLGreen,
            matLLGreen,
            matYellow,
            matGold,
            matOrange,
        ]
    }
}

/**
 * Material colors 600
 * This is for internal usage only.
 */
class Mat600Package: ColorPackageBase {
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_600, color: Color("mat.600.red", bundle: .module))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_600, color: Color("mat.600.rose", bundle: .module))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_600, color: Color("mat.600.purple.light", bundle: .module))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_600, color: Color("mat.600.purple.dark", bundle: .module))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_600, color: Color("mat.600.blue.dark", bundle: .module))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_600, color: Color("mat.600.blue.light", bundle: .module))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_600, color: Color("mat.600.blue.lighter", bundle: .module))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_600, color: Color("mat.600.cyan.light", bundle: .module))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_600, color: Color("mat.600.cyan.dark", bundle: .module))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_600, color: Color("mat.600.green.dark", bundle: .module))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_600, color: Color("mat.600.green.light", bundle: .module))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_600, color: Color("mat.600.green.lighter", bundle: .module))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_600, color: Color("mat.600.yellow", bundle: .module))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_600, color: Color("mat.600.gold", bundle: .module))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_600, color: Color("mat.600.orange", bundle: .module))
    
    public override func getColorList() -> [KvColor] {
        return [
            matRed,
            matRose,
            matLPurple,
            matDPurple,
            matDBlue,
            matLBlue,
            matLLBlue,
            matLCyan,
            matDCyan,
            matDGreen,
            matLGreen,
            matLLGreen,
            matYellow,
            matGold,
            matOrange,
        ]
    }
}

/**
 * Material colors 400
 * This is for internal usage only.
 */
class Mat400Package: ColorPackageBase {
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.red", bundle: .module))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.rose", bundle: .module))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.purple.light", bundle: .module))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.purple.dark", bundle: .module))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.blue.dark", bundle: .module))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.blue.light", bundle: .module))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.blue.lighter", bundle: .module))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.cyan.light", bundle: .module))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.cyan.dark", bundle: .module))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.green.dark", bundle: .module))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.green.light", bundle: .module))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.green.lighter", bundle: .module))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.yellow", bundle: .module))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.gold", bundle: .module))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.orange", bundle: .module))
    
    public override func getColorList() -> [KvColor] {
        return [
            matRed,
            matRose,
            matLPurple,
            matDPurple,
            matDBlue,
            matLBlue,
            matLLBlue,
            matLCyan,
            matDCyan,
            matDGreen,
            matLGreen,
            matLLGreen,
            matYellow,
            matGold,
            matOrange,
        ]
    }
}

/**
 * Material colors 300
 * This is for internal usage only.
 */
class Mat300Package: ColorPackageBase {
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.red", bundle: .module))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.rose", bundle: .module))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.purple.light", bundle: .module))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.purple.dark", bundle: .module))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.blue.dark", bundle: .module))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.blue.light", bundle: .module))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.blue.lighter", bundle: .module))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.cyan.light", bundle: .module))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.cyan.dark", bundle: .module))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.green.dark", bundle: .module))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.green.light", bundle: .module))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.green.lighter", bundle: .module))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.yellow", bundle: .module))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.gold", bundle: .module))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.orange", bundle: .module))
    
    public override func getColorList() -> [KvColor] {
        return [
            matRed,
            matRose,
            matLPurple,
            matDPurple,
            matDBlue,
            matLBlue,
            matLLBlue,
            matLCyan,
            matDCyan,
            matDGreen,
            matLGreen,
            matLLGreen,
            matYellow,
            matGold,
            matOrange,
        ]
    }
}

/**
 * Material colors 200
 * This is for internal usage only.
 */
class Mat200Package: ColorPackageBase {
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.red", bundle: .module))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.rose", bundle: .module))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.purple.light", bundle: .module))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.purple.dark", bundle: .module))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.blue.dark", bundle: .module))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.blue.light", bundle: .module))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.blue.lighter", bundle: .module))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.cyan.light", bundle: .module))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.cyan.dark", bundle: .module))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.green.dark", bundle: .module))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.green.light", bundle: .module))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.green.lighter", bundle: .module))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.yellow", bundle: .module))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.gold", bundle: .module))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.orange", bundle: .module))
    
    public override func getColorList() -> [KvColor] {
        return [
            matRed,
            matRose,
            matLPurple,
            matDPurple,
            matDBlue,
            matLBlue,
            matLLBlue,
            matLCyan,
            matDCyan,
            matDGreen,
            matLGreen,
            matLLGreen,
            matYellow,
            matGold,
            matOrange,
        ]
    }
}

/**
 * Material colors 100
 * This is for internal usage only.
 */
class Mat100Package: ColorPackageBase {
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.red", bundle: .module))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.rose", bundle: .module))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.purple.light", bundle: .module))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.purple.dark", bundle: .module))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.blue.dark", bundle: .module))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.blue.light", bundle: .module))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.blue.lighter", bundle: .module))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.cyan.light", bundle: .module))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.cyan.dark", bundle: .module))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.green.dark", bundle: .module))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.green.light", bundle: .module))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.green.lighter", bundle: .module))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.yellow", bundle: .module))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.gold", bundle: .module))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.orange", bundle: .module))
    
    public override func getColorList() -> [KvColor] {
        return [
            matRed,
            matRose,
            matLPurple,
            matDPurple,
            matDBlue,
            matLBlue,
            matLLBlue,
            matLCyan,
            matDCyan,
            matDGreen,
            matLGreen,
            matLLGreen,
            matYellow,
            matGold,
            matOrange,
        ]
    }
}

/**
 * Material colors 50
 * This is for internal usage only.
 */
class Mat50Package: ColorPackageBase {
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.red", bundle: .module))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.rose", bundle: .module))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.purple.light", bundle: .module))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.purple.dark", bundle: .module))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.blue.dark", bundle: .module))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.blue.light", bundle: .module))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.blue.lighter", bundle: .module))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.cyan.light", bundle: .module))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.cyan.dark", bundle: .module))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.green.dark", bundle: .module))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.green.light", bundle: .module))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.green.lighter", bundle: .module))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.yellow", bundle: .module))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.gold", bundle: .module))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.orange", bundle: .module))
    
    public override func getColorList() -> [KvColor] {
        return [
            matRed,
            matRose,
            matLPurple,
            matDPurple,
            matDBlue,
            matLBlue,
            matLLBlue,
            matLCyan,
            matDCyan,
            matDGreen,
            matLGreen,
            matLLGreen,
            matYellow,
            matGold,
            matOrange,
        ]
    }
}
