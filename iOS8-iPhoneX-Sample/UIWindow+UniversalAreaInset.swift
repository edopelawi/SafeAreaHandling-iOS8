//
//  UIWindow+UniversalAreaInset.swift
//  iOS8-iPhoneX-Sample
//
//  Created by Ricardo Pramana Suranta on 25/04/18.
//  Copyright © 2018 Ricardo Pramana Suranta. All rights reserved.
//

import UIKit

extension UIWindow {
	
	/**
	Returns `safeAreaInsets` for iOS 11 and above, and zero edge inset for lower.
	*/
	var universalAreaInsets: UIEdgeInsets {
		
		if #available(iOS 11, *) {
			return self.safeAreaInsets
		} else {
			return UIEdgeInsets.zero
		}
	}
	
}
