//
//  UINavigationBar+Theme.swift
//  SportBook
//
//  Created by Calvin Chang on 2018/4/12.
//  Copyright © 2018 SapphireInfo. All rights reserved.
//

import Foundation

extension UINavigationBar {
    var barTintColorKey: String? {
        get {
            return value(forKeyString: "barTintColorKey") as? String;
        }

        set {
            setValue(newValue, forKeyString: "barTintColorKey")
            if newValue != nil {
                let hexString = SAPThemeManager.shared.colorDic![newValue!]
                barTintColor = UIColor(fromHexString: hexString)
            }
        }
    }
}
