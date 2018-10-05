//
//  UIView+Theme.swift
//  SportBook
//
//  Created by Calvin Chang on 2018/4/11.
//  Copyright © 2018 SapphireInfo. All rights reserved.
//

import Foundation

extension UIView {
    @IBInspectable open var backgroundColorKey: String? {
        get {
            return value(forKeyString: "backgroundColorKey") as? String
        }

        set {
            setValue(newValue, forKeyString: "backgroundColorKey")
            if let key = newValue, let hexString = SAPThemeManager.shared.colorDic?[key] {
                backgroundColor = UIColor(hexString: hexString)
            }
        }
    }

    @IBInspectable open var tintColorKey: String? {
        get {
            return value(forKeyString: "tintColorKey") as? String
        }

        set {
            setValue(newValue, forKeyString: "tintColorKey")
            if let key = newValue, let hexString = SAPThemeManager.shared.colorDic?[key] {
                tintColor = UIColor(hexString: hexString)
            }
        }
    }
}
