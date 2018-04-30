//
//  UIColor+Theme.swift
//  SportBook
//
//  Created by Calvin Chang on 2018/4/12.
//  Copyright © 2018 SapphireInfo. All rights reserved.
//

import Foundation
import Colours

extension UIColor {
    @objc open static func colorForTheme(key: String) -> UIColor! {
        let hexString = SAPThemeManager.shared.colorDic![key]
        return UIColor(fromHexString: hexString)
    }

    @objc public convenience init(themeKey: String) {
        let hexString = SAPThemeManager.shared.colorDic![themeKey]
        self.init(fromHexString: hexString)
    }
}
