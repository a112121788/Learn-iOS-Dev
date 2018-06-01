//
//  ViewController.swift
//  DemoTableView
//
//  Created by 高帅朋 on 2018/6/1.
//  Copyright © 2018年 高帅朋. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let tableView = UITableView(frame: UIScreen.main.bounds, style: UITableViewStyle.plain)
    let table_data = ["1", "2","3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "首页"
        
        //table view
        self.view = tableView
        //tableView.separatorStyle = UITableViewCellSeparatorStyle.singleLine
        tableView.tableFooterView = UIView()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    
    //cell 高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    //数量
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return table_data.count
    }
    
    // cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text =  table_data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("did select \(indexPath.row)")
    }
}

