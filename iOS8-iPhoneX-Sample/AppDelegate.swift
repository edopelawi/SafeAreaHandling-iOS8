//
//  AppDelegate.swift
//  iOS8-iPhoneX-Sample
//
//  Created by Ricardo Pramana Suranta on 25/04/18.
//  Copyright © 2018 Ricardo Pramana Suranta. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?


	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		
		let windowFrame = UIScreen.main.bounds
		
		window = UIWindow(frame: windowFrame)
		window?.makeKeyAndVisible()
		
		let rootViewController = SampleFullscreenViewController()
		let rootNavigationController = UINavigationController(rootViewController: rootViewController)
		
		window?.rootViewController = rootNavigationController
		
		return true
	}

}
