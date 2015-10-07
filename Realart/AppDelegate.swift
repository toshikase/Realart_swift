//
//  AppDelegate.swift
//  Realart
//
//  Created by 敏宏 加世田 on 9/22/15.
//  Copyright (c) 2015 Sendee. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var myTabBarController: UITabBarController!

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        // Tabに設定するViewControllerのインスタンスを生成.
        let makeStoryboard = UIStoryboard(name: "Make", bundle: nil)
        let makeViewController = makeStoryboard.instantiateViewControllerWithIdentifier("MakeVC") as! MakeViewController
        
        let readStoryboard = UIStoryboard(name: "Read", bundle: nil)
        let readViewController = readStoryboard.instantiateViewControllerWithIdentifier("ReadVC") as! ReadViewController
        
        let settingStoryboard = UIStoryboard(name: "Setting", bundle: nil)
        let settingViewController = settingStoryboard.instantiateViewControllerWithIdentifier("SettingVC") as! SettingViewController
        
        let makeTab: UIViewController = makeViewController
        makeTab.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 1)
        let readTab: UIViewController = readViewController
        readTab.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 1)
        let settingTab: UIViewController = settingViewController
        settingTab.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 1)
        
        // タブを要素に持つArrayの.を作成する.
        let myTabs = NSArray(objects: makeTab, readTab, settingTab)
        
        myTabBarController = UITabBarController()
        
        myTabBarController?.setViewControllers(myTabs as? [UIViewController], animated: false)
        
        // RootViewControllerに設定する.
        self.window!.rootViewController = myTabBarController
        
        self.window!.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

