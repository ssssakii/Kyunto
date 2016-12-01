//
//  AppDelegate.swift
//  Kyun_1
//
//  Created by 坂本のぞみ on 2016/11/21.
//  Copyright © 2016年 坂本のぞみ. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var myTabBar:UITabBarController!


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //追加-->
        /*window = UIWindow(frame: UIScreen.main.bounds)
        
        //UIViewControllerをタブ数分作成してUITabViewControllerに埋め込む
        let homeView:UIViewController = KyunViewController()
        let memoView:UIViewController = memoViewController()
        
        homeView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.bookmarks,tag: 1)//アイコン
        memoView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.mostViewed,tag: 2)
        let viewArray = NSArray(objects: homeView,memoView)
        myTabBar = UITabBarController()
        myTabBar?.setViewControllers(viewArray as [AnyObject], animated: false)
        self.window!.rootViewController = myTabBar
        
        self.window?.makeKeyAndVisible()
        
        //追加<--*/
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

