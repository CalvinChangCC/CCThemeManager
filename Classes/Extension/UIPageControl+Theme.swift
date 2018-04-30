//
//  UIPageControl+Theme.swift
//  SportBook
//
//  Created by Calvin Chang on 2018/4/19.
//  Copyright © 2018 SapphireInfo. All rights reserved.
//

import Foundation
import Colours
import SAPFoundation

extension UIPageControl {
    @IBInspectable open var currentPageIndicatorTintColorKey: String? {
        get {
            return value(forKeyString: "currentPageIndicatorTintColorKey") as? String;
        }

        set {
            setValue(newValue, forKeyString: "currentPageIndicatorTintColorKey")
            if newValue != nil {
                let hexString = SAPThemeManager.shared.colorDic![newValue!]
                currentPageIndicatorTintColor = UIColor(fromHexString: hexString)
            }
        }
    }
}
