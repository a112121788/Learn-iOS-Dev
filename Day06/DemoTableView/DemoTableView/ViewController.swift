//
//  ViewController.swift
//  DemoTableView
//
//  Created by 高帅朋 on 2018/6/1.
//  Copyright © 2018年 高帅朋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let tableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "首页"
        
        //table view 
        self.view = tableView
        
    }
}

