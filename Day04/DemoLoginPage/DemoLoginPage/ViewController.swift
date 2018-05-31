//
//  ViewController.swift
//  DemoLoginPage
//

import UIKit
import Material
import SnapKit

class ViewController: UIViewController {

    let name = TextField()
    let password = TextField()
    let code = Button()
    let login = Button()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        initViews()
    }
    
    func initViews(){
        name.placeholder = "name"
        password.placeholder = "passowrd"
        
        self.view.addSubview(name)
        self.view.addSubview(password)
        self.view.addSubview(code)
        self.view.addSubview(login)
        
        name.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(self.view).offset(20)
            make.right.equalTo(self.view).offset(-20)
            make.top.equalTo(self.view).offset(100)
        }
        
        password.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(self.view).offset(20)
            make.right.equalTo(self.view).offset(-100)
            make.top.equalTo(name.snp.bottom).offset(40)
        }
        
        code.setTitle("验证码", for: UIControlState())
        code.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        code.backgroundColor = UIColor(red: 0.98, green: 0.42, blue: 0.61, alpha: 1.00)
        code.snp.makeConstraints { (make) -> Void in
            make.size.equalTo(CGSize(width: 80, height: 30))
            make.right.equalTo(self.view).offset(-20)
            make.top.equalTo(name.snp.bottom).offset(40)
        }
        
        login.setTitle("登录", for: UIControlState())
        login.backgroundColor = UIColor(red: 0.98, green: 0.42, blue: 0.61, alpha: 1.00)
        login.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(44)
            make.left.equalTo(self.view).offset(20)
            make.right.equalTo(self.view).offset(-20)
            make.top.equalTo(code.snp.bottom).offset(40)
        }

    }
}

