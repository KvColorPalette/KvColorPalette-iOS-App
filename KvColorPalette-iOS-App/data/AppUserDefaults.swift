//
//  File.swift
//
//
//  Created by Kavimal Wijewardana on 9/15/23.
//

import Foundation

public class AppUserDefaults {

    public static let CURRENT_THEME_COLOR = "CURRENT_THEME_COLOR"

    static var appUserDefults: AppUserDefaults!

    var userDefaults = UserDefaults.standard

    public static func getInstance() -> AppUserDefaults {
        guard let appUserDefults = appUserDefults else {
            appUserDefults = AppUserDefaults()
            return appUserDefults
        }
        return appUserDefults
    }

    public func storeValue(key: String, data: Any) {
        userDefaults.set(data, forKey: key)
    }

    public func storeObject<T: Codable>(key: String, responseType: T.Type, data: T) {
        if let encodeData = try? JSONEncoder().encode(data) {
            userDefaults.set(encodeData, forKey: key)
        }
    }

    public func clearValue(key: String) {
        userDefaults.removeObject(forKey: key)
    }

    public func retrieveString(key: String) -> String? {
        return userDefaults.string(forKey: key)
    }

    public func retrieveBool(key: String) -> Bool {
        return userDefaults.bool(forKey: key)
    }

    public func retrieveInt(key: String) -> Int {
        return userDefaults.integer(forKey: key)
    }

    public func retrieveFloat(key: String) -> Float {
        return userDefaults.float(forKey: key)
    }

    public func retrieveObject<T: Codable>(key: String, responseType: T.Type) -> T? {
        if let encodedData = userDefaults.object(forKey: key) as? Data {
            if let decodedData = try? JSONDecoder().decode(T.self, from: encodedData) {
                return decodedData
            }
        }
        return nil
    }
}
