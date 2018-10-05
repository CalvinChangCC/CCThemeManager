//
//  UIColor+Theme.swift
//  SportBook
//
//  Created by Calvin Chang on 2018/4/12.
//  Copyright © 2018 SapphireInfo. All rights reserved.
//

import Foundation

extension UIColor {
    @objc open static func colorForTheme(key: String) -> UIColor? {
        if let hexString = SAPThemeManager.shared.colorDic?[key] {
            return UIColor(hexString: hexString)
        }
        return nil
    }

    @objc public convenience init(themeKey: String) {
        if let hexString = SAPThemeManager.shared.colorDic?[themeKey] {
            self.init(hexString: hexString)
        }
        else {
            assertionFailure("[ERROR] Can not find the theme key")
            self.init()
        }
    }
}
