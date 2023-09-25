//
//  WIUserDefaultManager.swift
//  Vpn
//
//  Created by Tipu on 14/10/22.
//

import Foundation
enum WIUserDefaultManagerKey : String {
    case activityLevel = "activityLevel" // String
    case selectedRow = "selectedRow" // INT
    case selectedTrail = "selectedTrail" //BOOL
}

//MARK: Fetch
class WIUserDefaultManager {
    
    class func get<T: Any>(key: WIUserDefaultManagerKey) -> T? {
        if let value = UserDefaults.standard.value(forKey: key.rawValue) as? T {
            return value
        }
        return nil
    }
}

//MARK: Save
extension WIUserDefaultManager {
    
    class func save<T: Any>(key: WIUserDefaultManagerKey,  value: T) {
        UserDefaults.standard.set(value, forKey: key.rawValue)
        UserDefaults.standard.synchronize()
    }
}

/*
//MARK: Remove
extension WIUserDefaultManager {
    class func removeUserDefaultInfo(){
        WIUserDefaultManager.remove(key: .isWeightTaken)
        WIUserDefaultManager.remove(key: .weightInKg)
        WIUserDefaultManager.remove(key: .dailyIntakeGoalAmount)
        WIUserDefaultManager.remove(key: .isDefaultThemeColorLoaded)
        WIUserDefaultManager.remove(key: .isDefaultDrinkTypeLoaded)
    }
 
    class func remove(key: WIUserDefaultManagerKey) {
        UserDefaults.standard.set(nil, forKey: key.rawValue)
        UserDefaults.standard.synchronize()
    }
 }
 */
