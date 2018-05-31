//
//  ViewController.swift
//  DemoKeyChain
//
//  Created by 高帅朋 on 2018/6/1.
//  Copyright © 2018年 高帅朋. All rights reserved.
//

import UIKit
import KeychainSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let keychain = KeychainSwift()
        
        keychain.set("xxxx", forKey: "key1")
        print(keychain.get("key1"))
    }

}

