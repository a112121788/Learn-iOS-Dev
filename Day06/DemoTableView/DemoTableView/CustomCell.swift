//
//  CustomCell.swift
//  DemoTableView
//
//  Created by 高帅朋 on 2018/6/1.
//  Copyright © 2018年 高帅朋. All rights reserved.
//

import UIKit
import SnapKit
import Material

class CustomCell: UITableViewCell {
    var  name:UILabel?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.initViews();
    }
    
    func initViews(){
        
        self.name = UILabel()
        self.name?.textColor = UIColor.white
        self.name?.backgroundColor = UIColor.red
        self.name?.textAlignment  = NSTextAlignment.center

        self.addSubview(self.name!)
        
        self.name?.snp.makeConstraints { (make) in
            make.left.top.equalTo(15)
            make.right.equalTo(-15)
            make.bottom.equalTo(self)
        }
        
    }
}
