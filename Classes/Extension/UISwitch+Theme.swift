//
//  UISwitch+Theme.swift
//  SportBook
//
//  Created by Calvin Chang on 2018/4/19.
//  Copyright © 2018 SapphireInfo. All rights reserved.
//

import Foundation

extension UISwitch {
    @IBInspectable open var onTintColorKey: String? {
        get {
            return value(forKeyString: "onTintColorKey") as? String
        }

        set {
            setValue(newValue, forKeyString: "onTintColorKey")
            if let key = newValue, let hexString = SAPThemeManager.shared.colorDic?[key] {
                onTintColor = UIColor(hexString: hexString)
            }
        }
    }
}
