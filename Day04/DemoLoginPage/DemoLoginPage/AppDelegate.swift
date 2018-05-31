//
//  AppDelegate.swift
//  DemoLoginPage
//
//  Created by 高帅朋 on 2018/5/31.
//  Copyright © 2018年 高帅朋. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window =  UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.gray
        
        let navController = UINavigationController(rootViewController: UploadVideo2Controller())
        self.window?.rootViewController = navController
        self.window!.makeKeyAndVisible()
        
        return true
    }

}

