//
//  ViewController.swift
//  SAPThemeManagerDemo
//
//  Created by Calvin Chang on 2018/4/30.
//  Copyright © 2018 CalvinChang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testButton: UIButton!
    @IBOutlet weak var testLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        testButton.setTitleColorKey("primaryColor6", for: .normal)
        testButton.setTitleColorKey("selectedColor1", for: .highlighted)

        testLabel.backgroundColorKey = "warningColor1"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
