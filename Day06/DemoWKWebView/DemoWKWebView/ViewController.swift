//
//  ViewController.swift
//  DemoWKWebView
//
//  Created by 高帅朋 on 2018/6/1.
//  Copyright © 2018年 高帅朋. All rights reserved.
//

import UIKit

class ViewController: UIViewController, WKNavigationDelegate {
    let webView = WKWebView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "title"
        
        self.view = webView
        
        self.webView.navigationDelegate = self
        webView.load(URLRequest(url: URL(string: "https://www.jianshu.com/p/6ba2507445e4")!))
    
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
}

