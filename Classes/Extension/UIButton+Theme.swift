//
//  UIButton+Theme.swift
//  SportBook
//
//  Created by Calvin Chang on 2018/4/12.
//  Copyright © 2018 SapphireInfo. All rights reserved.
//

import Foundation
import Colours
import SAPFoundation

extension UIButton {

    @IBInspectable open var titleColorKey_normal: String? {
        get {
            return value(forKeyString: "titleColorKey_normal") as? String;
        }

        set {
            setValue(newValue, forKeyString: "titleColorKey_normal")
            if newValue != nil {
                setTitleColorKey(newValue, for: .normal)
            }
        }
    }

    @IBInspectable open var titleColorKey_highlighted: String? {
        get {
            return value(forKeyString: "titleColorKey_highlighted") as? String;
        }

        set {
            setValue(newValue, forKeyString: "titleColorKey_highlighted")
            if newValue != nil {
                setTitleColorKey(newValue, for: .highlighted)
            }
        }
    }

    @IBInspectable open var titleColorKey_disabled: String? {
        get {
            return value(forKeyString: "titleColorKey_disabled") as? String;
        }

        set {
            setValue(newValue, forKeyString: "titleColorKey_disabled")
            if newValue != nil {
                setTitleColorKey(newValue, for: .disabled)
            }
        }
    }

    @IBInspectable open var titleColorKey_selected: String? {
        get {
            return value(forKeyString: "titleColorKey_selected") as? String;
        }

        set {
            setValue(newValue, forKeyString: "titleColorKey_selected")
            if newValue != nil {
                setTitleColorKey(newValue, for: .selected)
            }
        }
    }

    @objc open func setTitleColorKey(_ themeKey: String?, for state: UIControlState) {
        let hexString = SAPThemeManager.shared.colorDic![themeKey!]
        setTitleColor(UIColor(fromHexString: hexString), for: state)
    }
}
