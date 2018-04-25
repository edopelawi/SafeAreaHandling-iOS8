//
//  SampleFullscreenViewController.swift
//  iOS8-iPhoneX-Sample
//
//  Created by Ricardo Pramana Suranta on 25/04/18.
//  Copyright © 2018 Ice House. All rights reserved.
//

import UIKit

final class SampleFullscreenViewController: BaseViewController {

	@IBOutlet private weak var topConstraint: NSLayoutConstraint!
	@IBOutlet private weak var bottomConstraint: NSLayoutConstraint!
	
	@IBOutlet private weak var trailingConstraint: NSLayoutConstraint!
	@IBOutlet private weak var leadingConstraint: NSLayoutConstraint!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		title = "Fullscreen Page"
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		navigationController?.isNavigationBarHidden = true
	}

	override func viewEdgeConstraints() -> ViewControllerEdgeConstraints? {
		
		return ViewControllerEdgeConstraints(
			top: topConstraint,
			bottom: bottomConstraint,
			leading: leadingConstraint,
			trailing: trailingConstraint
		)
	}
	
	// MARK: - Private methods
	
	@IBAction func navigateToNextPage(_ sender: Any) {
		
		let nextViewController = SampleBarScreenViewController()
		self.navigationController?.pushViewController(nextViewController, animated: true)
	}
}
