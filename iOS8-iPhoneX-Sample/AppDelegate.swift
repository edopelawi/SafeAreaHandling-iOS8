//
//  AppDelegate.swift
//  iOS8-iPhoneX-Sample
//
//  Created by Ricardo Pramana Suranta on 25/04/18.
//  Copyright © 2018 Ice House. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?


	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		
		let mainFrame = UIScreen.main.applicationFrame
		
		window = UIWindow(frame: mainFrame)
		window?.makeKeyAndVisible()
		
		window?.rootViewController = SampleViewController()
		
		return true
	}

}
