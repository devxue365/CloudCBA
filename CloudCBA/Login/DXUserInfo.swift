//
//  DXUserInfo.swift
//  CloudCBA
//
//  Created by 191204 on 2021/4/26.
//

import UIKit

enum UserInfoKey: String {
    case account
    case password
    case userName
    case userType
    case userToken
}

class DXUserInfo {
    
    static func set(key: UserInfoKey, value: String) {
        UserDefaults.standard.setValue(value, forKey: key.rawValue)
    }
    
    static func value(key: UserInfoKey) {
        UserDefaults.standard.string(forKey: key.rawValue)
    }

    static func values(key: UserInfoKey) {
        
    }
}
