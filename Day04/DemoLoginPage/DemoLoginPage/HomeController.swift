//
//  HomeController.swift
//  DemoLoginPage
//

import UIKit
import SnapKit
import Material

class HomeController: UIViewController {
    let content = UIView()
    let left_btn = UIButton()
    let right_btn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor  = UIColor.white
        initViews()
    }
    
    func initViews()  {
        
        self.view.addSubview(content)
        self.view.addSubview(left_btn)
        self.view.addSubview(right_btn)
        
        content.backgroundColor = UIColor.brown
        left_btn.backgroundColor = UIColor.red
        right_btn.backgroundColor = UIColor.blue
        
        content.snp.makeConstraints { (make) -> Void in
            make.left.top.equalTo(self.view).offset(20)
            make.right.equalTo(self.view).offset(-20)
            make.bottom.equalTo(self.view).offset(-80)
        }
        
        left_btn.setTitle("left", for: UIControlState())
        right_btn.setTitle("right", for: UIControlState())

        left_btn.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(self.view).offset(20)
            make.width.equalTo(60)
            make.top.equalTo(content.snp.bottom).offset(10)
            make.bottom.equalTo(self.view).offset(-15)
        }
        
        right_btn.snp.makeConstraints { (make) -> Void in
            make.right.equalTo(self.view).offset(-20)
            make.left.equalTo(left_btn.snp.right).offset(10)
            make.top.equalTo(content.snp.bottom).offset(10)
            make.bottom.equalTo(self.view).offset(-15)
        }
    }
}
