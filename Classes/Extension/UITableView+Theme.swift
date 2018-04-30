//
//  UITableView+Theme.swift
//  SportBook
//
//  Created by Calvin Chang on 2018/4/13.
//  Copyright © 2018 SapphireInfo. All rights reserved.
//

import Foundation

extension UITableView {
    var separatorColorKey: String? {
        get {
            return value(forKeyString: "separatorColorKey") as? String;
        }

        set {
            setValue(newValue, forKeyString: "separatorColorKey")
            if newValue != nil {
                let hexString = SAPThemeManager.shared.colorDic![newValue!]
                separatorColor = UIColor(fromHexString: hexString)
            }
        }
    }
}
