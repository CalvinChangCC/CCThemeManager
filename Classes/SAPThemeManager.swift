//
//  SAPThemeManager.swift
//  SportBook
//
//  Created by Calvin Chang on 2018/4/11.
//  Copyright © 2018 SapphireInfo. All rights reserved.
//

import UIKit

@objcMembers
class SAPThemeManager: NSObject {

    static let shared = SAPThemeManager()
    
    public var colorDic : Dictionary<String, String>?
    
    private override init() {}
    
    class func initWith(theme: String) {
        shared.configureManagerWith(theme: theme)
    }
    
    fileprivate func configureManagerWith(theme: String) {
        let filePath = Bundle.main.path(forResource: theme, ofType: "json")
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: filePath!))
            let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments)
            self.colorDic = json as? Dictionary<String, String>
        }
        catch {
            print("[ERROR][SAPThemeManager] Theme json file parse fail")
            assertionFailure("[ERROR][SAPThemeManager] Theme json file parse fail")
        }
    }
    
}
