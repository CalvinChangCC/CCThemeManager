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
            return value(forKeyString: "backgroundColorKey") as? String;
        }

        set {
            setValue(newValue, forKeyString: "backgroundColorKey")
            if newValue != nil {
                let hexString = SAPThemeManager.shared.colorDic![newValue!]
                backgroundColor = UIColor(hexString: hexString!)
            }
        }
    }

    @IBInspectable open var tintColorKey: String? {
        get {
            return value(forKeyString: "tintColorKey") as? String;
        }

        set {
            setValue(newValue, forKeyString: "tintColorKey")
            if newValue != nil {
                let hexString = SAPThemeManager.shared.colorDic![newValue!]
                tintColor = UIColor(hexString: hexString!)
            }
        }
    }
}
