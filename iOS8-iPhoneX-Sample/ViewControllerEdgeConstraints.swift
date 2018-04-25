//
//  ViewControllerEdgeConstraints.swift
//  iOS8-iPhoneX-Sample
//
//  Created by Ricardo Pramana Suranta on 25/04/18.
//  Copyright © 2018 Ricardo Pramana Suranta. All rights reserved.
//

import UIKit

struct ViewControllerEdgeConstraints {
	
	let top: NSLayoutConstraint?
	let bottom: NSLayoutConstraint?
	let leading: NSLayoutConstraint?
	let trailing: NSLayoutConstraint?
	
	/**
	Configures the constraints based on passet `edgeInsets`.
	*/
	func configure(edgeInsets: UIEdgeInsets) {
		
		top?.constant = edgeInsets.top
		bottom?.constant = edgeInsets.bottom
		leading?.constant = edgeInsets.left
		trailing?.constant = edgeInsets.right
	}
}
