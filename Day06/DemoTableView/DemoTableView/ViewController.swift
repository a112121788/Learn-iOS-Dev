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
    let table_data = Array(repeating: "1", count: 10000)
    let cellIdentifier = "cell"

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
        var custom_cell = CustomCell(style: .default, reuseIdentifier: cellIdentifier)
//        var custom_cell  = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? CustomCell
//        if custom_cell == nil {
//            custom_cell = CustomCell(style: .default, reuseIdentifier: cellIdentifier)
//        }
        
        custom_cell.name?.text = "\([indexPath.row])"
        return custom_cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("did select \(indexPath.row)")
    }
}

