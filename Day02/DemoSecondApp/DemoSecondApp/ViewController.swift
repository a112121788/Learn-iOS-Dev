//
//  ViewController.swift
//  DemoSecondApp
//
//  Created by 高帅朋 on 2018/5/31.
//  Copyright © 2018年 高帅朋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.brown
        var label = UILabel()
        label.text = "xxx"
        label.layer.frame = UIScreen.main.bounds
        self.view.addSubview(label)
    }

}

