//
//  ViewController.swift
//  DemoNetImage
//
//  Created by 高帅朋 on 2018/6/1.
//  Copyright © 2018年 高帅朋. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageView = UIImageView()
        imageView.layer.frame = UIScreen.main.bounds
        self.view.addSubview(imageView)
        imageView.kf.setImage(with: URL(string: "https://www.baidu.com/img/baidu_jgylogo3.gif"))
    }

}

