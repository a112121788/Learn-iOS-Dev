//
//  ViewController.swift
//  DemoNetWork
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Alamofire.request("http://localhost:3000/videos").responseJSON { resp in
            //print(resp.request)
            //print(resp.response)

            //print(resp.error != nil)
            //print(resp.result.value)
            let data = JSON(resp.result.value)
            print(data[0]["title"])
        }

    }

}

