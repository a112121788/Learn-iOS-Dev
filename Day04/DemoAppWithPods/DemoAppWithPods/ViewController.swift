//
//  ViewController.swift
//  DemoAppWithPods
//

import UIKit
import Material
import SnapKit

struct ButtonLayout {
    struct Raised {
        static let width: CGFloat = 150
        static let height: CGFloat = 44
        static let offsetY: CGFloat = -75
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = RaisedButton(title: "Button", titleColor: .white)
        button.pulseColor = .white
        button.backgroundColor = UIColor(red: 0.98, green: 0.42, blue: 0.61, alpha: 1.00)
        
        
        self.view.addSubview(button)

//        //常规布局
//        view.layout(button)
//            .width(ButtonLayout.Raised.width)
//            .height(ButtonLayout.Raised.height)
//            .center(offsetY: ButtonLayout.Raised.offsetY)
        
        //snap 布局 (也就是自动布局)
        button.snp.makeConstraints { (make) -> Void in
            make.width.equalTo(ButtonLayout.Raised.width)
            make.height.equalTo(ButtonLayout.Raised.height)
            make.center.equalTo(self.view)
            make.centerY.equalTo(self.view).offset(ButtonLayout.Raised.offsetY)
        }
    
    }
}

