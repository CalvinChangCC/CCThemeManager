//
//  UIPageControl+Theme.swift
//  SportBook
//
//  Created by Calvin Chang on 2018/4/19.
//  Copyright © 2018 SapphireInfo. All rights reserved.
//

import Foundation

extension UIPageControl {
    @IBInspectable open var currentPageIndicatorTintColorKey: String? {
        get {
            return value(forKeyString: "currentPageIndicatorTintColorKey") as? String
        }

        set {
            setValue(newValue, forKeyString: "currentPageIndicatorTintColorKey")
            if let key = newValue, let hexString = SAPThemeManager.shared.colorDic?[key] {
                currentPageIndicatorTintColor = UIColor(hexString: hexString)
            }
        }
    }
}
