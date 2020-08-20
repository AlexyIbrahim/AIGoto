//
//  File.swift
//  
//
//  Created by Alexy Ibrahim on 8/20/20.
//

import Foundation

internal extension Dictionary where Key == String {
    
    func containsKey(_ key: String) -> Bool {
        return self.keyExist(key)
    }
    
    func keyExist(_ key: String) -> Bool {
        let keyExists = self[key] != nil
        return keyExists
    }
    
    func containsKeys() -> Bool {
        return self.hasKeys()
    }
    
    func hasKeys() -> Bool {
        return self.keys.count > 0
    }
}
