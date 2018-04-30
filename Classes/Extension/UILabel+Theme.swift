//
//  UILabel+Theme.swift
//  SportBook
//
//  Created by Calvin Chang on 2018/4/12.
//  Copyright © 2018 SapphireInfo. All rights reserved.
//

import Foundation
import Colours
import SAPFoundation

extension UILabel {
    @IBInspectable open var textColorKey: String? {
        get {
            return value(forKeyString: "textColorKey") as? String;
        }

        set {
            setValue(newValue, forKeyString: "textColorKey")
            if newValue != nil {
                let hexString = SAPThemeManager.shared.colorDic![newValue!]
                textColor = UIColor(fromHexString: hexString)
            }
        }
    }
}
