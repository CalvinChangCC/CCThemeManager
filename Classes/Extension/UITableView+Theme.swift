//
//  UITableView+Theme.swift
//  SportBook
//
//  Created by Calvin Chang on 2018/4/13.
//  Copyright © 2018 SapphireInfo. All rights reserved.
//

import Foundation

extension UITableView {
    @IBInspectable open var separatorColorKey: String? {
        get {
            return value(forKeyString: "separatorColorKey") as? String
        }

        set {
            setValue(newValue, forKeyString: "separatorColorKey")
            if let key = newValue, let hexString = SAPThemeManager.shared.colorDic?[key] {
                separatorColor = UIColor(hexString: hexString)
            }
        }
    }
}
