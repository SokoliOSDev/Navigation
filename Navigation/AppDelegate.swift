//
//  AppDelegate.swift
//  collection
//
//  Created by Даниил Сокол on 23.03.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        _ = PhotosTableViewController()
                
                window = UIWindow(frame: UIScreen.main.bounds)
                window?.rootViewController = PhotosTableViewController()
                window?.makeKeyAndVisible()

        return true
    }
}

