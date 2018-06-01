//
//  ViewController.swift
//  DemoTableView
//
//  Created by 高帅朋 on 2018/6/1.
//  Copyright © 2018年 高帅朋. All rights reserved.
//

import UIKit
import RealmSwift

// Define your models like regular Swift classes
class Dog: Object {
    @objc dynamic var name = ""
    @objc dynamic var age = 0
}
class Person: Object {
    @objc dynamic var name = ""
    @objc dynamic var picture: Data? = nil // optionals supported
    let dogs = List<Dog>()
}

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
        
        
        
 
        
        // Use them like regular Swift objects
        let myDog = Dog()
        myDog.name = "Rex"
        myDog.age = 1
        print("name of dog: \(myDog.name)")
        
        // Get the default Realm
        let realm = try! Realm()
        
        // Query Realm for all dogs less than 2 years old
        let puppies = realm.objects(Dog.self).filter("age < 2")
        puppies.count // => 0 because no dogs have been added to the Realm yet
        print(puppies.count)
        
        // Persist your data easily
        try! realm.write {
            realm.add(myDog)
        }
        
        // Queries are updated in realtime
        puppies.count // => 1
        print(puppies.count)
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
        
        tableView.deselectRow(at: indexPath, animated: false) //取消选中效果
        
        print("did select \(indexPath.row)")
    }
}

