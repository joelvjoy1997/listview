//
//  AppDelegate.swift
//  listview
//
//  Created by Tigris Solutions India Pvt Ltd on 21/08/18.
//  Copyright © 2018 listview. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! as String)
        print("hi")
        print("first")
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    print("phonecall")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("background")
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        print("terminated")
        
    }


}

