//
//  UIButton+Theme.swift
//  SportBook
//
//  Created by Calvin Chang on 2018/4/12.
//  Copyright © 2018 SapphireInfo. All rights reserved.
//

import Foundation

extension UIButton {
    @IBInspectable open var titleColorKeyNormal: String? {
        get {
            return value(forKeyString: "titleColorKeyNormal") as? String
        }

        set {
            setValue(newValue, forKeyString: "titleColorKeyNormal")
            if let key = newValue {
                setTitleColorKey(key, for: .normal)
            }
        }
    }

    @IBInspectable open var titleColorKeyHighlighted: String? {
        get {
            return value(forKeyString: "titleColorKeyHighlighted") as? String
        }

        set {
            setValue(newValue, forKeyString: "titleColorKeyHighlighted")
            if let key = newValue {
                setTitleColorKey(key, for: .highlighted)
            }
        }
    }

    @IBInspectable open var titleColorKeyDisabled: String? {
        get {
            return value(forKeyString: "titleColorKeyDisabled") as? String
        }

        set {
            setValue(newValue, forKeyString: "titleColorKeyDisabled")
            if let key = newValue {
                setTitleColorKey(key, for: .disabled)
            }
        }
    }

    @IBInspectable open var titleColorKeySelected: String? {
        get {
            return value(forKeyString: "titleColorKeySelected") as? String
        }

        set {
            setValue(newValue, forKeyString: "titleColorKeySelected")
            if let key = newValue {
                setTitleColorKey(key, for: .selected)
            }
        }
    }

    @objc open func setTitleColorKey(_ themeKey: String, for state: UIControl.State) {
        if let hexString = SAPThemeManager.shared.colorDic?[themeKey] {
            setTitleColor(UIColor(hexString: hexString), for: state)
        }
    }
}
