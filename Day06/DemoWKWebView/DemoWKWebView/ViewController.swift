//
//  ViewController.swift
//  DemoWKWebView
//
//  Created by 高帅朋 on 2018/6/1.
//  Copyright © 2018年 高帅朋. All rights reserved.
//

import UIKit
import SnapKit
import WebKit

class ViewController: UIViewController {
    let webView = WKWebView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "title"
        
        self.view.addSubview(webView)
        
        webView.load(URLRequest(url: URL(string: "https://www.jianshu.com/p/6ba2507445e4")!))
        webView.snp.makeConstraints { (make) in
            make.left.right.bottom.top.equalTo(self.view)
        }
    }
}

