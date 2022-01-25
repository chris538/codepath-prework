//
//  UserDefaults+Extension.swift
//  Prework
//
//  Created by Chris Le on 1/23/22.
//

import Foundation

extension UserDefaults{
    func setValueForSwitch(value: Bool?){
        if value != nil{
            UserDefaults.standard.set(value, forKey: "switch_state")
        }
        else{
            UserDefaults.standard.removeObject(forKey: "switch_state")
        }
        
        UserDefaults.standard.synchronize()
    }
    
    func getValueOfSwitch() -> Bool?{
        return UserDefaults.standard.value(forKey: "switch_state") as? Bool
    }
}
