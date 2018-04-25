//
//  SampleBarScreenViewController.swift
//  iOS8-iPhoneX-Sample
//
//  Created by Ricardo Pramana Suranta on 25/04/18.
//  Copyright © 2018 Ricardo Pramana Suranta. All rights reserved.
//

import UIKit

final class SampleBarScreenViewController: BaseViewController {
	
	@IBOutlet private weak var topConstraint: NSLayoutConstraint!
	@IBOutlet private weak var bottomConstraint: NSLayoutConstraint!
	@IBOutlet private weak var leadingConstraint: NSLayoutConstraint!
	@IBOutlet private weak var trailingConstraint: NSLayoutConstraint!
	
    override func viewDidLoad() {
        super.viewDidLoad()

		title = "Page with Navigation Bar"
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		self.navigationController?.isNavigationBarHidden = false
		updateEdgeConstraints()
	}
	
	override func viewEdgeConstraints() -> ViewControllerEdgeConstraints? {
		
		return ViewControllerEdgeConstraints(
			top: topConstraint,
			bottom: bottomConstraint,
			leading: leadingConstraint,
			trailing: trailingConstraint
		)
	}
}
