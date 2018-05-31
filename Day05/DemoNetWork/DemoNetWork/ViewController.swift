//
//  ViewController.swift
//  DemoNetWork
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Alamofire.request("https://m.baidu.com").responseJSON { resp in
            //print(resp.request)
            //print(resp.response)

            //print(resp.error != nil)
            print(resp.result.value)
        }
        .responseString {resp in
            print(resp.result.value)
        }
        
     
        
    }

}

