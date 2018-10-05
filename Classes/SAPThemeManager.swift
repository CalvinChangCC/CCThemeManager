//
//  SAPThemeManager.swift
//  SportBook
//
//  Created by Calvin Chang on 2018/4/11.
//  Copyright © 2018 SapphireInfo. All rights reserved.
//

import UIKit

@objcMembers
open class SAPThemeManager: NSObject {

    open static let shared = SAPThemeManager()
    
    fileprivate var colorDic: [String: String]?
    
    private override init() {}
    
    open class func initWith(filePath: String) {
        shared.configureManagerWith(theme: filePath)
    }

    open class func initWith(theme: [String: String]) {
        shared.colorDic = theme
    }

    open class func setTheme(_ theme: [String: String]) {
        shared.colorDic = theme
    }

    fileprivate func configureManagerWith(theme: String) {
        if let filePath = Bundle.main.path(forResource: theme, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: filePath))
                let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                self.colorDic = json as? [String: String]
            }
            catch {
                assertionFailure("[ERROR][SAPThemeManager] Theme json file parse fail")
            }
        }
    }
    
}
