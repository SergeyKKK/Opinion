//
//  AppDelegate.swift
//  Opinion
//
//  Created by Serega Kushnarev on 22.04.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let welcomeViewController = WelcomeViewController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = welcomeViewController
        window?.makeKeyAndVisible()
       
        return true
    }
}

