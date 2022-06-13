//
//  AppDelegate.swift
//  Anime
//
//  Created by Vitor Trimer on 11/06/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let mainViewController = MainViewController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .black
        window?.overrideUserInterfaceStyle = .dark
        
        let mainVC = mainViewController
        mainVC.statusBar()
        
        window?.rootViewController = mainVC
        window?.makeKeyAndVisible()
        
        mainViewController.selectedIndex = 0
        
        return true
    }

}

