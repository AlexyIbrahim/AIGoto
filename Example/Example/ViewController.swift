//
//  ViewController.swift
//  Example
//
//  Created by Alexy Ibrahim on 8/20/20.
//  Copyright © 2020 Alexy Ibrahim. All rights reserved.
//

import UIKit
import AIGoto

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        goto.define("first goto") {
            print("first goto fired")
            |->"second goto"
        }
        
        goto.define("second goto") {
            print("second goto fired")
        }
        
        |->"first goto"
        
        print("FINAL")
    }


}

