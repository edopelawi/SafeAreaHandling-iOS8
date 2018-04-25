//
//  BaseViewController.swift
//  iOS8-iPhoneX-Sample
//
//  Created by Ricardo Pramana Suranta on 25/04/18.
//  Copyright © 2018 Ice House. All rights reserved.
//

import UIKit

// Provides default XIB loading implementation for iOS 8.
class BaseViewController: UIViewController {

	/**
	Loads this view controller based on XIB file with same class name. Necessary for iOS 8 and below.
	*/
	init() {
		let bundle = Bundle(for: type(of: self))
		let nibName = String(describing: type(of: self))
		
		super.init(nibName: nibName, bundle: bundle)
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}

}
