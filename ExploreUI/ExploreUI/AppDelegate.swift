//
//  AppDelegate.swift
//  ExploreUI
//
//  Created by Zhang Qiuhao on 5/29/20.
//  Copyright © 2020 Zhang Qiuhao. All rights reserved.
//

import SwipeViewController
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_: UIApplication,
                     didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
//        let VC1 = UIViewController()
//        VC1.view.backgroundColor = .blue
//        VC1.title = "Recommend"
//        let VC2 = UIViewController()
//        VC2.view.backgroundColor = .red
//        VC2.title = "COVID-19"
//        let VC3 = UIViewController()
//        VC3.view.backgroundColor = .yellow
//        VC3.title = "Trending"
//        let VC4 = UIViewController()
//        VC4.view.backgroundColor = .cyan
//        VC4.title = "News"
//
//        let swipeViewController = ViewController(pages: [VC1, VC2, VC3, VC4])
//        swipeViewController.startIndex = 0
//        swipeViewController.selectionBarWidth = 80
//        swipeViewController.selectionBarHeight = 3
//        swipeViewController.selectionBarColor = .gray
//        swipeViewController.selectedButtonColor = .gray
//        swipeViewController.equalSpaces = true
//        swipeViewController.offset = 0
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let testController = TestViewController(collectionViewLayout: layout)
        let navVC = UINavigationController(rootViewController: testController)
        // Button with image example
//        let buttonOne = SwipeButtonWithImage(image: UIImage(named: "Hearts"), selectedImage: UIImage(named: "YellowHearts"), size: CGSize(width: 40, height: 40))
//        swipeViewController.buttonsWithImages = [buttonOne, buttonOne, buttonOne]
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navVC
        window?.makeKeyAndVisible()
        

        return true
    }

    func applicationWillResignActive(_: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}
